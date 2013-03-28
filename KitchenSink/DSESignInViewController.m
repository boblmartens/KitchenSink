//
//  DSESignInViewController.m
//  SignIn
//
//  Created by Bob Martens on 3/27/13.
//  Copyright (c) 2013 Deck78. All rights reserved.
//

#import "DSESignInViewController.h"

@interface DSESignInViewController ()
@property (weak, nonatomic) IBOutlet UITextField *signInField;
@end

@implementation DSESignInViewController

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
	// Do any additional setup after loading the view.
}

- (IBAction)cancelButtonTapped:(UIButton *)sender {
    [self.delegate signInViewControllerDidCancel:self];
}

- (void)submitSignInName {
    [self.delegate signInViewController:self didEnterName:self.signInField.text];
}

- (IBAction)saveButtonTapped:(UIButton *)sender {
    [self submitSignInName];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self submitSignInName];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
