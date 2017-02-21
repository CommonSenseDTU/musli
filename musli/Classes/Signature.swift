//
//  Signature.swift
//  Pods
//
//  Created by Anders Borch on 2/2/17.
//
//

import Foundation
import RestKit
import ResearchKit

/**
    Specialization of the ```ORKConsentSignature``` which has ```RestKit```
    serialition functionality.
*/
public class Signature: ORKConsentSignature {

    /// Document which is is consented to with this signature.
    var consentDocument = ConsentDocument()

    /// Create a signature instance
    override init() {
        super.init()
        self.identifier = self.identifier.lowercased()
    }

    /**
        Create a signature instance.

        - parameter aDecoder: The deserialization decoder.
    */
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.identifier = self.identifier.lowercased()
    }

    // A date formatter for parsing date strings generated by super class.
    private static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()

    /// Date object attribute for the signatureDate string.
    internal var date: Date? {
        get {
            guard let signatureDate = self.signatureDate else { return nil }
            return Signature.formatter.date(from: signatureDate)
        }
        set(aDate) {
            guard let date = aDate else { return }
            self.signatureDate = Signature.formatter.string(from: date)
        }
    }

    /*
        Request mapping from object to json. The mapping includes a
        transformation of consent document, signatureImage to base64 jpeg and
        date to iso8601.
    */
    internal static let inverseMapping: RKObjectMapping = {
        let mapping = RKObjectMapping(for: NSMutableDictionary.self)!
        mapping.addAttributeMappings(from: [
            "identifier": "id",
            "givenName": "first_name",
            "familyName": "last_name",
            "date": "creation_date_time"
        ])

        let documentMapping = ConsentDocument.mapping.inverse()
        mapping.addPropertyMapping(RKRelationshipMapping(fromKeyPath: "consentDocument", toKeyPath: "document", with: documentMapping))

        let validation = { (sourceClass: AnyClass?, destinationClass: AnyClass?) -> Bool in
            guard sourceClass is UIImage else { return false }
            guard destinationClass is NSString else { return false }
            return true
        }

        let transformation = { (inputValue: Any?, outputValue: AutoreleasingUnsafeMutablePointer<AnyObject?>?, outputValueClass: AnyClass?, error: NSErrorPointer) -> Bool in
            guard let image = inputValue as? UIImage else { return false }
            guard outputValueClass is NSString else { return false }

            guard let data = UIImageJPEGRepresentation(image, 0.8) else { return false }
            let base64String = (data as NSData).base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))

            outputValue?.pointee = base64String as AnyObject?
            return true
        }

        let transformer = RKBlockValueTransformer(validationBlock: validation, transformationBlock: transformation)
        if let imageMapping = RKAttributeMapping(fromKeyPath: "signatureImage", toKeyPath: "image_data") {
            imageMapping.valueTransformer = transformer
            imageMapping.propertyValueClass = NSString.self
            mapping.addPropertyMapping(imageMapping)
        }

        if let dateMapping = RKAttributeMapping(fromKeyPath: "date", toKeyPath: "creation_date_time") {
            dateMapping.valueTransformer = RKValueTransformer.iso8601TimestampToDate()
            dateMapping.propertyValueClass = NSString.self
            mapping.addPropertyMapping(dateMapping)
        }

        return mapping
    }()

}
