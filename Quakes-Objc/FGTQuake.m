//
//  FGTQuake.m
//  Quakes-Objc
//
//  Created by FGT MAC on 7/1/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import "FGTQuake.h"

@implementation FGTQuake


-(instancetype)initWithMagnitude:(double)aMagnitude
                           place:(NSString *)aPlace
                            time:(NSDate *)aTime
                        latidude:(double)aLatidude
                       longitude:(double)aLongitude{
    
    self = [super init];
    if(self){
        _magnitude = aMagnitude;
        _place = aPlace;
        _time = aTime;
        _latidude = aLatidude;
        _longitude = aLongitude;
    }
    
    return self;
}


- (instancetype)initWithDictionary:(NSDictionary *)aDictionary
{
    return  nil;
}


@end
