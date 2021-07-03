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
    NSData *quakeMockData = [[NSData alloc] initWithContentsOfFile:filePath];
    
    NSError *jsonError;
    NSDictionary *data = [NSJSONSerialization
                          JSONObjectWithData:quakeMockData
                          options:0
                          error:&jsonError];
    
    if(![data isKindOfClass:NSDictionary.class]){
        NSLog(@"%@", jsonError);
    }
    
    XCTAssertNotNil(data);
    XCTAssertTrue([data isKindOfClass: NSDictionary.class]);
    
}


@end
