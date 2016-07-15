//
//  RightMenuViewController.h
//  iOSSlideMenuTestTask
//
//  Created by Admin on 14.07.16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationContorllerAnimator.h"
#import "SlideNavigationContorllerAnimatorFade.h"
#import "SlideNavigationContorllerAnimatorSlide.h"
#import "SlideNavigationContorllerAnimatorScale.h"
#import "SlideNavigationContorllerAnimatorScaleAndFade.h"
#import "SlideNavigationContorllerAnimatorSlideAndFade.h"

@interface RightMenuViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
