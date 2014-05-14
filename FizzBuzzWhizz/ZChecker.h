//
//  ZChecker.h
//  FizzBuzzWhizz
//
//  Created by croath on 4/29/14.
//  Copyright (c) 2014 Croath. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, ZType) {
    ZTYPE_NOT   = 0,
};

@interface ZChecker : NSObject

@property (nonatomic, strong) NSArray *numsArray;

- (id)initWithNumsArray:(NSArray*)numsArray;
- (NSString*)countOffOfInterger:(NSInteger)inputInt;

@end
