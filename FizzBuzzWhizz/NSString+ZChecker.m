//
//  NSString+ZChecker.m
//  FizzBuzzWhizz
//
//  Created by croath on 4/29/14.
//  Copyright (c) 2014 Croath. All rights reserved.
//

#import "NSString+ZChecker.h"

@implementation NSString (ZChecker)

- (BOOL)canDivide:(NSInteger)input{
    return [self integerValue] % input == 0;
}

- (BOOL)containsInterger:(NSInteger)input{
    return [self rangeOfString:[NSString stringWithFormat:@"%ld", input]].location != NSNotFound;
}

- (ZType)zTypeOfChecher:(ZChecker*)checker{
    __block ZType type = ZTYPE_NOT;
    
    if ([self containsInterger:[[[checker numsArray] firstObject] integerValue]]) {
        type = 1;
    }
    
    if (type != ZTYPE_NOT) {
        return type;
    }
    
    [[checker numsArray] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([self canDivide:[obj integerValue]]) {
            type = type | (1 << idx);
        }
    }];
    
    return type;
}

@end
