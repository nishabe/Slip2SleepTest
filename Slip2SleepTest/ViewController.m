//
//  ViewController.m
//  Slip2SleepTest
//
//  Created by Abraham, Aneesh on 3/12/19.
//  Copyright © 2019 Simplex Apps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self startCycleTimer];
}

- (void) startCycleTimer {
    [NSTimer scheduledTimerWithTimeInterval:5
                                     target:self
                                   selector:@selector(targetMethod)
                                   userInfo:nil
                                    repeats:YES];
}

- (void)targetMethod {
    [self startCycle];
}

- (void)startCycle {
    for (int count = 0; count <= 1000; count++) {
        NSLog(@"%f",count / 1000.0);
        UIScreen.mainScreen.brightness = count / 1000.0;
    }
    
    for (int count = 1000; count >= 0; count--) {
        NSLog(@"%f",count / 1000.0);
        UIScreen.mainScreen.brightness = count / 1000.0;
    }
}

@end
