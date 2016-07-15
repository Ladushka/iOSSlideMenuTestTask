//
//  HybridViewController.m
//  iOSSlideMenuTestTask
//
//  Created by Admin on 15.07.16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "HybridViewController.h"

@interface HybridViewController (){
    GMSMapView *mapView_;
}
@end

@implementation HybridViewController

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    GMSCameraPosition *camera = [GMSCameraPosition
                                 cameraWithLatitude:55.182668
                                 longitude:30.202229
                                 zoom:8];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
    mapView_.mapType = kGMSTypeHybrid;
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
}

@end
