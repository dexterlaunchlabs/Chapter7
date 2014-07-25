//
//  BIDDependentComponentPickerViewController.h
//  Pickers
//
//  Created by Dexter Launchlabs on 7/24/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kStateComponent 0 
#define kZipComponent 1

@interface BIDDependentComponentPickerViewController : UIViewController
            <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSDictionary *stateZips;
@property (strong, nonatomic) NSArray *states;
@property (strong, nonatomic) NSArray *zips;
- (IBAction) buttonPressed;
@end
