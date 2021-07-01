//
//  FGTQuake.h
//  Quakes-Objc
//
//  Created by FGT MAC on 7/1/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGTQuake : NSObject

@property (nonatomic, readonly) double magnitude;
@property (nonatomic, readonly, copy) NSString *place;
@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly) double latidude;
@property (nonatomic, readonly) double longitude;

-(instancetype)initWithMagnitude:(double)aMagnitude
                           place:(NSString *)aPlace
                            time:(NSDate *)aTime
                        latidude:(double)aLatidude
                       longitude:(double)aLongitude;


@end

NS_ASSUME_NONNULL_END
 
