//
//  ShemeViewController.m
//  iOSSlideMenuTestTask
//
//  Created by Admin on 15.07.16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "ShemeViewController.h"

@interface ShemeViewController (){
    GMSMapView *mapView_;
}

@end

@implementation ShemeViewController

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
    
    mapView_.mapType = kGMSTypeNormal;
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
}
@end
