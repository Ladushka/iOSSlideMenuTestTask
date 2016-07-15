//
//  MapViewController.m
//  iOSSlideMenuTestTask
//
//  Created by Admin on 14.07.16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController (){
    GMSMapView *mapView_;
}
@end

@implementation MapViewController

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

    mapView_.mapType = kGMSTypeSatellite;
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
}
@end
