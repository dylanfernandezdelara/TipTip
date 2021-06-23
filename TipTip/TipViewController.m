//
//  TipViewController.m
//  TipTip
//
//  Created by dylanfdl on 6/22/21.
//

// DEBUGGING TIPS / THINGS TO REMEMBER
// 1 -> KEY VALUE CODING-COMPLIANT probably means an outlet or action name change issue

#import "TipViewController.h"

@interface TipViewController ()
// outlets are used to access info from other views within a ViewController
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipPercentageControl;
@property (weak, nonatomic) IBOutlet UIView *labelsContainerView;

@end

@implementation TipViewController
bool onPage = true;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    double doubleValue = [defaults doubleForKey:@"default_tip_percentage"];
    if (doubleValue == 0.25){
        self.tipPercentageControl.selectedSegmentIndex = 2;
    }
    NSLog(@"View will appear");
}

// IBAction is the RETURN FIELD
// onTap is the NAME OF INSTANCE FUNCTION
// id after : is PARAMETER
// sender is to start a Segues ... not relevant atm according to Priya (TA)
- (IBAction)onTap:(id)sender {
    // NSLog prints to VSCode "terminal" and does not appear on iOS
    // NSLog(@"hello");
    
    // self refers to View's Tap Gesture Recognizer
    // tap input -> ends editing -> hides keyboard
    [self.view endEditing:true];
}

// Changes other labels after any input to the BILL LABEL
- (IBAction)updateLabels:(id)sender {
    // checks if billField is empty
    if (self.billField.text.length == 0){
        [self hideLabels];
        onPage = false;
    }
    if (self.billField.text.length == 1 && !onPage){
        [self showLabels];
        onPage = true;
    }
    
    // sets values for text fields
    double bill = [self.billField.text doubleValue];
    double tipPercetages[] = {0.15, 0.20, 0.25};
    double tipPercent = tipPercetages[self.tipPercentageControl.selectedSegmentIndex];
    double tip = bill * tipPercent;
    double total = bill + tip;
    
    // declare an NSString X, with X being a double that has been
    // converted to a string using the stringWithFormat function
    // casting strings works the same way as in C
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

- (void)hideLabels {
    [UIView animateWithDuration:0.5 animations:^{
        // What is a CGRect?
        // It is simply a type (like an double, etc.) that is used
        // for inherent heights, widths of components
        CGRect billFrame = self.billField.frame;
        billFrame.origin.y += 200;
        self.billField.frame = billFrame;
        
        CGRect labelsField = self.labelsContainerView.frame;
        labelsField.origin.y += 200;
        self.labelsContainerView.frame = labelsField;
        
        // alpha value -> indicates if something appears or disappears
        self.labelsContainerView.alpha = 0;
    }];
}

- (void)showLabels {
    [UIView animateWithDuration:0.5 animations:^{
        // changes alpha value of labelsContainerView to 1
        self.labelsContainerView.alpha = 1;
        CGRect billFrame = self.billField.frame;
        billFrame.origin.y -= 200;
        self.billField.frame = billFrame;
        
        CGRect labelsField = self.labelsContainerView.frame;
        labelsField.origin.y -= 200;
        self.labelsContainerView.frame = labelsField;
    }];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
