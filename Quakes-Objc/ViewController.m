//
//  ViewController.m
//  Quakes-Objc
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSILog.h"
#import "FirstResponder.h"

@interface ViewController ()

@property (nonatomic, copy) int(^blockPropertyName)(int a, int b);

@end

@implementation ViewController

- (void)viewDidLoad
{
[super viewDidLoad];
    
    NSLog(@"Hey Quakes!");
    
    FirstResponder *firstResponder = [[FirstResponder alloc] init];
    
    NSLog(@"firstResponder: %@", firstResponder);
    NSLog(@"firstResponder.name: %@", firstResponder.name);
    
    // C: NULL
    // Primitive: 0, false, NO
    // Objective-C: nil
    // For NSArray, etc: [NSNull null]
    
    firstResponder.name = @"Dimitri";
    NSLog(@"firstResponder.name: %@", firstResponder.name);
    
    int (^performMathOnNumbers)(int a, int b) = ^int(int a, int b) {
        return a + b;
    };
    
    int result = performMathOnNumbers(5, 8);
    NSLog(@"The sum is: %d", result);
    
    performMathOnNumbers = ^int(int a, int b) {
        return a*b;
    };
    
    result = performMathOnNumbers(5, 8);
    NSLog(@"The product is: %d", result);
    
    self.blockPropertyName = performMathOnNumbers;
    
    result = self.blockPropertyName(5, 8);
    NSLog(@"The product is: %d", result);
    
    __block int c = 17;
    
    self.blockPropertyName = ^int(int a, int b) {
        NSLog(@"Before we do math, the first responder is: %@; c is %d", firstResponder.name, c);
        c = 12;
        return a*2 + b*3;
    };
    
    firstResponder = [[FirstResponder alloc] init];
    firstResponder.name = @"Irtimid";
    
    c = 42;
    
    result = self.blockPropertyName(5, 8);
    NSLog(@"The new result is now: %d", result);
    NSLog(@"c is now: %d", c);
}


@end
