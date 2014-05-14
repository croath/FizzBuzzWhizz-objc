//
//  main.m
//  FizzBuzzWhizz
//
//  Created by croath on 4/29/14.
//  Copyright (c) 2014 Croath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZChecker.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        ZChecker *checker = [[ZChecker alloc] init];
        while (YES) {
            int a, b, c;
            scanf("%d,%d,%d", &a, &b, &c);
            if (a > 9 || b > 9 || c > 9 ||
                a < 1 || b < 1 || c < 1 ||
                a == b || b == c || a == c) {
                NSLog(@"illegal input");
                continue;
            }
            for (NSInteger i = 1; i <= 100; i ++) {
                [checker setNumsArray:@[@(a), @(b), @(c)]];
                NSLog(@"%@", [checker countOffOfInterger:i]);
            }
        }
    }
    return 0;
}

