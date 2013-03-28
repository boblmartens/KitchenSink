//
//  DSEDetailViewController.m
//  KitchenSink
//
//  Created by Bob Martens on 3/27/13.
//  Copyright (c) 2013 Deck78. All rights reserved.
//

#import "DSEDetailViewController.h"

@interface DSEDetailViewController ()

@end

@implementation DSEDetailViewController

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
    self.navigationItem.title = self.titleText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
