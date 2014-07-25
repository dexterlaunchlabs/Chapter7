//
//  BIDSingleComponentPickerViewController.m
//  Pickers
//
//  Created by Dexter Launchlabs on 7/24/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import "BIDSingleComponentPickerViewController.h"

@interface BIDSingleComponentPickerViewController ()

@end

@implementation BIDSingleComponentPickerViewController
@synthesize singlePicker;
@synthesize pickerData;
- (IBAction)buttonPressed{
    NSInteger row = [singlePicker selectedRowInComponent:0];
    NSString *selected = [pickerData objectAtIndex:row];
    NSString *title = [[NSString alloc] initWithFormat:@"You selected: %@",selected];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"Thank You for Choosing." delegate:nil cancelButtonTitle:@"You are welcome" otherButtonTitles: nil];
    
    [alert show];

}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSArray *array = [[NSArray alloc] initWithObjects:@"Dexter",@"Luke",@"Lea",@"Han",@"Chewbecca", @"Artoo",@"Threepio",@"Lando", nil];
    self.pickerData = array;
}
-(void)viewDidUnload{
    [super viewDidUnload];
    self.singlePicker = nil;
    self.pickerData = nil;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - 
#pragma mark Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [pickerData count];
}
#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component { return [pickerData objectAtIndex:row];
}
@end
