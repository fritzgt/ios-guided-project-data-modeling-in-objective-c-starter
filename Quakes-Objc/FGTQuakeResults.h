//
//  FGTQuakeResults.h
//  Quakes-Objc
//
//  Created by FGT MAC on 7/3/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FGTQuake.h"

NS_ASSUME_NONNULL_BEGIN

@interface FGTQuakeResults : NSObject


@property (nonatomic,readonly,copy) NSArray<FGTQuake *> *quakes;



- (instancetype)initWithQuakes:(NSArray<FGTQuake *> *)quakes NS_DESIGNATED_INITIALIZER;


- (nullable instancetype)initWithDictionary:(NSDictionary *)aDictionary;


@end

NS_ASSUME_NONNULL_END
