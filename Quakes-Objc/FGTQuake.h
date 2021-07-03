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

@property (nonatomic, readonly, copy) NSString *type;
@property (nonatomic, readonly, copy, nullable) NSString *alert;


-(instancetype)initWithMagnitude:(double)aMagnitude
                           place:(NSString *)aPlace
                            time:(NSDate *)aTime
                        latidude:(double)aLatidude
                       longitude:(double)aLongitude
                            type:(NSString *)aType
                           alert:(NSString *)aAlert NS_DESIGNATED_INITIALIZER;//MArk as desinated init because this will be the one that calls super

- (instancetype)initWithDictionary:(NSDictionary *)aDictionary;

@end

NS_ASSUME_NONNULL_END
 
