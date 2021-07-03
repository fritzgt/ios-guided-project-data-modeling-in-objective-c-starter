//
//  FGTQuakeResults.m
//  Quakes-Objc
//
//  Created by FGT MAC on 7/3/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import "FGTQuakeResults.h"

@implementation FGTQuakeResults

- (instancetype)init
{
    return [self initWithQuakes:@[]];
}

- (instancetype)initWithQuakes:(NSArray<FGTQuake *> *)quakes
{
    self = [super init];
    
    if(self){
        _quakes = quakes;
    }
    
    return  self;
}


- (nullable instancetype)initWithDictionary:(NSDictionary *)aDictionary
{
    NSArray *quakeDictionaries = [aDictionary objectForKey:@""];
    if(![quakeDictionaries isKindOfClass:NSArray.class]) return nil;
    
    NSMutableArray *quakes = [[NSMutableArray alloc] initWithCapacity: quakeDictionaries.count];
    
    for (NSDictionary *quakeDictionary in quakeDictionaries){
        //IF is not valid continue to the next
        if(![quakeDictionary isKindOfClass:NSDictionary.class])continue;
        
        //Init to add to the array
        FGTQuake *quake = [[FGTQuake alloc] initWithDictionary:quakeDictionary];
        
        if(quake){
            [quakes addObject:quake];
        }else{
            NSLog(@"Unable tp parse quake dic: %@", quakeDictionary);
        }
        
    }
    
    
    
    return [self initWithQuakes:@[]];
}

@end
