//
//  ViewController.m
//  BaiduMapSample
//
//  Created by frog78 on 2020/9/30.
//  Copyright © 2020 frog78. All rights reserved.
//

#import "ViewController.h"
#import <BaiduMapKit/BaiduMapKit.h>

@interface ViewController ()<BMKMapViewDelegate>

@property (nonatomic, strong) BMKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mapView = [[BMKMapView alloc] initWithFrame:self.view.bounds];
    self.mapView.rotateEnabled = NO;
    self.mapView.delegate = self;
    [self.view addSubview:self.mapView];
    CLLocationCoordinate2D location2D = CLLocationCoordinate2DMake(39.9153, 116.404191);
    self.mapView.zoomLevel = 14;
    [self.mapView setCenterCoordinate:location2D animated:YES];
}


@end
