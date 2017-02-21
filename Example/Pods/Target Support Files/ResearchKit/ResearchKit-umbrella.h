#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "ORKStepNavigationRule.h"
#import "ORKNavigableOrderedTask.h"
#import "ORKDiscreteGraphChartView.h"
#import "ORKStep.h"
#import "ORKAnswerFormat.h"
#import "ORKRecorder.h"
#import "ORKTimedWalkStep.h"
#import "ORKFormStepViewController.h"
#import "ORKResult.h"
#import "ORKWaitStep.h"
#import "ORKStepViewController.h"
#import "ORKActiveStepViewController.h"
#import "ORKFormStep.h"
#import "ORKRegistrationStep.h"
#import "ORKWaitStepViewController.h"
#import "ORKDefines.h"
#import "ORKInstructionStep.h"
#import "ORKVerificationStep.h"
#import "ORKConsentSection.h"
#import "ORKPasscodeViewController.h"
#import "ORKLineGraphChartView.h"
#import "ResearchKit.h"
#import "ORKTaskViewController.h"
#import "ORKActiveStep.h"
#import "ORKGraphChartView.h"
#import "ORKVisualConsentStep.h"
#import "ORKPasscodeStep.h"
#import "ORKKeychainWrapper.h"
#import "ORKConsentSharingStep.h"
#import "ORKQuestionStep.h"
#import "ORKImageCaptureStep.h"
#import "ORKHealthAnswerFormat.h"
#import "ORKPieChartView.h"
#import "ORKOrderedTask.h"
#import "ORKLoginStepViewController.h"
#import "ORKResultPredicate.h"
#import "ORKVerificationStepViewController.h"
#import "ORKConsentReviewStep.h"
#import "ORKTask.h"
#import "ORKConsentSignature.h"
#import "ORKRangedPoint.h"
#import "ORKLoginStep.h"
#import "ORKConsentDocument.h"
#import "ORKImageCaptureStepViewController.h"
#import "ORKAnswerFormat_Private.h"
#import "ORKReactionTimeStep.h"
#import "ORKCustomStepView.h"
#import "ORKHolePegTestRemoveStep.h"
#import "ORKDataLogger.h"
#import "ORKToneAudiometryStepViewController.h"
#import "ORKInstructionStepViewController.h"
#import "ORKStepNavigationRule_Private.h"
#import "ORKCountdownStep.h"
#import "ORKToneAudiometryPracticeStepViewController.h"
#import "ResearchKit_Private.h"
#import "ORKHolePegTestPlaceStep.h"
#import "ORKQuestionStepViewController_Private.h"
#import "ORKOrderedTask_Private.h"
#import "ORKTimedWalkStepViewController.h"
#import "ORKDefines_Private.h"
#import "ORKConsentSharingStepViewController.h"
#import "ORKQuestionStepViewController.h"
#import "ORKVisualConsentStepViewController.h"
#import "ORKCompletionStepViewController.h"
#import "ORKPasscodeStepViewController.h"
#import "ORKWalkingTaskStep.h"
#import "ORKToneAudiometryPracticeStep.h"
#import "ORKSpatialSpanMemoryStep.h"
#import "ORKAudioStepViewController.h"
#import "ORKRecorder_Private.h"
#import "ORKTowerOfHanoiStep.h"
#import "ORKHolePegTestRemoveStepViewController.h"
#import "ORKPSATStepViewController.h"
#import "ORKCompletionStep.h"
#import "ORKCountdownStepViewController.h"
#import "ORKConsentReviewStepViewController.h"
#import "ORKFitnessStepViewController.h"
#import "ORKFitnessStep.h"
#import "ORKTaskViewController_Private.h"
#import "ORKTappingIntervalStepViewController.h"
#import "ORKWalkingTaskStepViewController.h"
#import "ORKPSATStep.h"
#import "ORKResult_Private.h"
#import "ORKErrors.h"
#import "ORKToneAudiometryStep.h"
#import "ORKHolePegTestPlaceStepViewController.h"
#import "ORKSpatialSpanMemoryStepViewController.h"
#import "ORKTappingIntervalStep.h"
#import "ORKAudioStep.h"

FOUNDATION_EXPORT double ResearchKitVersionNumber;
FOUNDATION_EXPORT const unsigned char ResearchKitVersionString[];

