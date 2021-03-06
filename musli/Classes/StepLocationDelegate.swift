//
//  StepLocationDelegate.swift
//  Pods
//
//  Created by Anders Borch on 4/4/17.
//
//

import Foundation
import CoreLocation
import Granola

open class StepLocationDelegate: NSObject, CLLocationManagerDelegate {
    
    public var resourceManager: ResourceManager?
    public var step: Step?
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let step = self.step else { return }
        for location in locations {
            guard let serializer = OMHSerializerLocation(location: location) else { continue }
            do {
                let json = try serializer.dictionary(for: location)
                resourceManager?.upload(json: json, forStep: step, completion: { (success: Bool, error: Error?) in
                    print("location upload: \(success)")
                    guard error != nil else { return }
                    print(error)
                })
            } catch let exception {
                print(exception)
            }
        }
    }
}
