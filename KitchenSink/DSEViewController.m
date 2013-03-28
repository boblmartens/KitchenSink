//
//  DSEViewController.m
//  SignIn
//
//  Created by Bob Martens on 3/27/13.
//  Copyright (c) 2013 Deck78. All rights reserved.
//

#import "DSEViewController.h"
#import "DSESignInViewController.h"

@interface DSEViewController () <DSESignInViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;

@end

@implementation DSEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DSESignInViewController *signInVC = segue.destinationViewController;
    signInVC.delegate = self;
}

- (void)signInViewControllerDidCancel:(DSESignInViewController *)signInVC {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)signInViewController:(DSESignInViewController *)signInVC didEnterName:(NSString *)name {
    [self dismissViewControllerAnimated:YES completion:nil];
    self.greetingLabel.text = name;
}

@end
