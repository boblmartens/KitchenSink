    //
//  DSESignInViewController.h
//  SignIn
//
//  Created by Bob Martens on 3/27/13.
//  Copyright (c) 2013 Deck78. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DSESignInViewControllerDelegate;

@interface DSESignInViewController : UIViewController
@property (weak, nonatomic) id<DSESignInViewControllerDelegate>delegate;

@end

@protocol DSESignInViewControllerDelegate <NSObject>
- (void)signInViewControllerDidCancel:(DSESignInViewController *)signInVC;
- (void)signInViewController:(DSESignInViewController *)signInVC didEnterName:(NSString *)name;

@end