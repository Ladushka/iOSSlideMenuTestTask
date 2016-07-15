//
//  MapViewController.h
//  iOSSlideMenuTestTask
//
//  Created by Admin on 14.07.16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"
@import GoogleMaps;

@interface MapViewController : UIViewController  <SlideNavigationControllerDelegate>

@property (nonatomic, strong) IBOutlet UILabel *mapLabel;
@property (nonatomic, strong) NSString *mapName;

@end
