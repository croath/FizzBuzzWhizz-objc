//
//  ZChecker.m
//  FizzBuzzWhizz
//
//  Created by croath on 4/29/14.
//  Copyright (c) 2014 Croath. All rights reserved.
//

#import "ZChecker.h"
#import "NSString+ZChecker.h"

@interface ZChecker(){
    NSArray *_outputArray;
}

@end

@implementation ZChecker

- (id)initWithNumsArray:(NSArray*)numsArray{
    self = [super init];
    if (self) {
        [self setNumsArray:numsArray];
    }
    return self;
}

- (void)setNumsArray:(NSArray *)numsArray{
    NSAssert([numsArray count] == 3, @"check numbers count is 3");
    _numsArray = numsArray;
    _outputArray = @[@"Fizz", @"Buzz", @"Whizz"];
}

- (NSString*)countOffOfInterger:(NSInteger)inputInt{
    NSString *inputStr = [NSString stringWithFormat:@"%ld", inputInt];
    NSMutableString *outputStr = [NSMutableString stringWithString:@""];
    
    __block ZType type = [inputStr zTypeOfChecher:self];
    
    for (NSInteger i = 0; i < [_numsArray count]; i ++) {
        if ((type & (1 << i)) != 0) {
            [outputStr appendString:[_outputArray objectAtIndex:i]];
        }
    }
    
    if ([outputStr isEqualToString:@""]) {
        outputStr = [inputStr mutableCopy];
    }
    
    return outputStr;
}

@end
