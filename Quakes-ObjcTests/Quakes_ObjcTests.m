//
//  Quakes_ObjcTests.m
//  Quakes-ObjcTests
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
//#import "LSILog.h"
//#import "LSIFileHelper.h"
#import "FGTQuake.h"

@interface Quakes_ObjcTests : XCTestCase

@end

@implementation Quakes_ObjcTests

//Create test for the model
-(void)testQuakeParsing
{
    //Get the data
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Quake" ofType:@"json"];
    NSData *quakeData = [[NSData alloc] initWithContentsOfFile:filePath];
    
    XCTAssertNotNil(quakeData);
    XCTAssertTrue(quakeData isKindOfClass:NSDictionary.class);
    
//    FGTQuake *quake = [[FGTQuake alloc] initWithDictionary:quakeDictionary];
}


@end
