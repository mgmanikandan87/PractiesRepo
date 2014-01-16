//
//  ViewController.m
//  TestAppSonsor
//
//  Created by Moolya Software on 13/01/14.
//  Copyright (c) 2014 testapp. All rights reserved.
//

#import "ViewController.h"
#import <AppSponsorSDK/ASPopupAdController.h>

#define AD_ZONE @"z3zxOsStZE5UoQjUGhPGCg"

@interface ViewController ()
@property(nonatomic, strong) ASPopupAdController * controller;
@end

@implementation ViewController

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

- (IBAction)showAds:(id)sender {
    _controller = [[ASPopupAdController alloc] initWithZoneId:AD_ZONE];
    [_controller presentAd];
}

- (IBAction)loadAds:(id)sender {
    _controller = [[[ASPopupAdController alloc] enableLocationSupport] initWithZoneId:AD_ZONE];
    [_controller load];
}
@end
