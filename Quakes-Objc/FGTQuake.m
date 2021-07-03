//
//  FGTQuake.m
//  Quakes-Objc
//
//  Created by FGT MAC on 7/1/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import "FGTQuake.h"

@implementation FGTQuake

//Create this init to stop compailer warining because we marked as NS_DESIGNATED_INITIALIZER
- (instancetype)init
{
    return [self initWithMagnitude: 0
                              place: @""
                               time: NSDate.now
                           latidude:0
                          longitude:0
                               type: @""
                              alert:nil];
}

-(instancetype)initWithMagnitude:(double)aMagnitude
                           place:(NSString *)aPlace
                            time:(NSDate *)aTime
                        latidude:(double)aLatidude
                       longitude:(double)aLongitude
                            type:(NSString *)aType
                           alert:(NSString *)aAlert{
    
    self = [super init];
    if(self){
        _magnitude = aMagnitude;
        _place = aPlace;
        _time = aTime;
        _latidude = aLatidude;
        _longitude = aLongitude;
        _type = aType;
        _alert = aAlert;
    }
    
    return self;
}


- (instancetype)initWithDictionary:(NSDictionary *)aDictionary
{
    //1.Start decoding the JSON to match
    
    NSDictionary *properties = [aDictionary objectForKey:@"properties"];
    //Check that the type is a dic to be safe
    if(![properties isKindOfClass:NSDictionary.class]) return  nil;
    
    
    NSNumber *magnitude = [properties objectForKey:@"mag"];
    if (![magnitude isKindOfClass:NSNumber.class]) return nil;
    
    NSString *place = [properties objectForKey:@"place"];
    if (![place isKindOfClass: NSString.class]) return nil;
    
    NSNumber *timeInMilliseconds = [properties objectForKey:@"time"];
    if(![timeInMilliseconds isKindOfClass:NSNumber.class]) return nil;
    //Convert to a time format
    NSDate *time = [NSDate dateWithTimeIntervalSince1970: timeInMilliseconds.longValue/100];
    
    
    //Get to the second section
    NSDictionary *geometry = [aDictionary objectForKey:@"geometry"];
    if(![geometry isKindOfClass:NSDictionary.class]) return  nil;
    
    NSArray *coordinates = [geometry objectForKey:@"coordinates"];
    if(![coordinates isKindOfClass:NSArray.class])return nil;
    
    NSNumber *lat = nil;
    NSNumber *lon = nil;
    
    //Check the count to make sure we have at least two items in array
    if(coordinates.count >= 2){
        lat = [coordinates objectAtIndex:0];
        lon = [coordinates objectAtIndex:1];
        if(![lat isKindOfClass:NSNumber.class])return nil;
        if(![lon isKindOfClass:NSNumber.class]) return nil;
    }
    
    //2.Return the properties to the init
    return  [self initWithMagnitude: magnitude.doubleValue
                              place: place
                               time: time
                           latidude: lat.doubleValue
                          longitude: lon.doubleValue
                               type: @""
                              alert: nil];
}


@end
