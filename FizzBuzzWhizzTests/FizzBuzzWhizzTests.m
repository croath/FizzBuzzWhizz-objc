//
//  FizzBuzzWhizzTests.m
//  FizzBuzzWhizzTests
//
//  Created by croath on 4/29/14.
//  Copyright (c) 2014 Croath. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ZChecker.h"

@interface FizzBuzzWhizzTests : XCTestCase{
    ZChecker *_checker_357;
    ZChecker *_checker_753;
    ZChecker *_checker_246;
}

@end

@implementation FizzBuzzWhizzTests

- (void)setUp
{
    [super setUp];
    _checker_357 = [[ZChecker alloc] initWithNumsArray:@[@3, @5, @7]];
    _checker_753 = [[ZChecker alloc] initWithNumsArray:@[@7, @5, @3]];
    _checker_246 = [[ZChecker alloc] initWithNumsArray:@[@2, @4, @6]];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testNormalValue{
    // 3 5 7
    XCTAssert([[_checker_357 countOffOfInterger:1] isEqualToString:@"1"], @"357 check 1");
    XCTAssert([[_checker_357 countOffOfInterger:2] isEqualToString:@"2"], @"357 check 2");
    XCTAssert([[_checker_357 countOffOfInterger:3] isEqualToString:@"Fizz"], @"357 check 3");
    XCTAssert([[_checker_357 countOffOfInterger:5] isEqualToString:@"Buzz"], @"357 check 5");
    XCTAssert([[_checker_357 countOffOfInterger:7] isEqualToString:@"Whizz"], @"357 check 7");
    XCTAssert([[_checker_357 countOffOfInterger:13] isEqualToString:@"Fizz"], @"357 check 13");
    XCTAssert([[_checker_357 countOffOfInterger:15] isEqualToString:@"FizzBuzz"], @"357 check 15");
    XCTAssert([[_checker_357 countOffOfInterger:17] isEqualToString:@"17"], @"357 check 17");
    XCTAssert([[_checker_357 countOffOfInterger:31] isEqualToString:@"Fizz"], @"357 check 31");
    XCTAssert([[_checker_357 countOffOfInterger:51] isEqualToString:@"Fizz"], @"357 check 51");
    XCTAssert([[_checker_357 countOffOfInterger:71] isEqualToString:@"71"], @"357 check 71");
    
    // 7 5 3
    XCTAssert([[_checker_753 countOffOfInterger:1] isEqualToString:@"1"], @"753 check 1");
    XCTAssert([[_checker_753 countOffOfInterger:2] isEqualToString:@"2"], @"753 check 2");
    XCTAssert([[_checker_753 countOffOfInterger:3] isEqualToString:@"Whizz"], @"753 check 3");
    XCTAssert([[_checker_753 countOffOfInterger:5] isEqualToString:@"Buzz"], @"753 check 5");
    XCTAssert([[_checker_753 countOffOfInterger:7] isEqualToString:@"Fizz"], @"753 check 7");
    XCTAssert([[_checker_753 countOffOfInterger:13] isEqualToString:@"13"], @"753 check 13");
    XCTAssert([[_checker_753 countOffOfInterger:15] isEqualToString:@"BuzzWhizz"], @"753 check 15");
    XCTAssert([[_checker_753 countOffOfInterger:17] isEqualToString:@"Fizz"], @"753 check 17");
    XCTAssert([[_checker_753 countOffOfInterger:31] isEqualToString:@"31"], @"753 check 31");
    XCTAssert([[_checker_753 countOffOfInterger:51] isEqualToString:@"Whizz"], @"753 check 51");
    XCTAssert([[_checker_753 countOffOfInterger:71] isEqualToString:@"Fizz"], @"753 check 71");
    
    // 2 4 6
    XCTAssert([[_checker_246 countOffOfInterger:1] isEqualToString:@"1"], @"246 check 1");
    XCTAssert([[_checker_246 countOffOfInterger:2] isEqualToString:@"Fizz"], @"246 check 2");
    XCTAssert([[_checker_246 countOffOfInterger:4] isEqualToString:@"FizzBuzz"], @"246 check 4");
    XCTAssert([[_checker_246 countOffOfInterger:5] isEqualToString:@"5"], @"246 check 5");
    XCTAssert([[_checker_246 countOffOfInterger:6] isEqualToString:@"FizzWhizz"], @"246 check 6");
    XCTAssert([[_checker_246 countOffOfInterger:10] isEqualToString:@"Fizz"], @"246 check 10");
    XCTAssert([[_checker_246 countOffOfInterger:15] isEqualToString:@"15"], @"246 check 15");
    XCTAssert([[_checker_246 countOffOfInterger:17] isEqualToString:@"17"], @"246 check 17");
    XCTAssert([[_checker_246 countOffOfInterger:20] isEqualToString:@"Fizz"], @"246 check 20");
    XCTAssert([[_checker_246 countOffOfInterger:50] isEqualToString:@"Fizz"], @"246 check 50");
    XCTAssert([[_checker_246 countOffOfInterger:71] isEqualToString:@"71"], @"246 check 71");
}

- (void)testStrangeValue{
    // 3 5 7
    XCTAssert([[_checker_357 countOffOfInterger:105] isEqualToString:@"FizzBuzzWhizz"], @"357 check 105");
    XCTAssert([[_checker_357 countOffOfInterger:33] isEqualToString:@"Fizz"], @"357 check 33");
    XCTAssert([[_checker_357 countOffOfInterger:35] isEqualToString:@"Fizz"], @"357 check 35");
    XCTAssert([[_checker_357 countOffOfInterger:53] isEqualToString:@"Fizz"], @"357 check 53");
    
    // 7 5 3
    XCTAssert([[_checker_753 countOffOfInterger:105] isEqualToString:@"FizzBuzzWhizz"], @"753 check 105");
    XCTAssert([[_checker_753 countOffOfInterger:77] isEqualToString:@"Fizz"], @"753 check 77");
    XCTAssert([[_checker_753 countOffOfInterger:57] isEqualToString:@"Fizz"], @"753 check 57");
    XCTAssert([[_checker_753 countOffOfInterger:75] isEqualToString:@"Fizz"], @"753 check 75");
    
    // 2 4 6
    XCTAssert([[_checker_246 countOffOfInterger:48] isEqualToString:@"FizzBuzzWhizz"], @"246 check 48");
    XCTAssert([[_checker_246 countOffOfInterger:22] isEqualToString:@"Fizz"], @"246 check 22");
    XCTAssert([[_checker_246 countOffOfInterger:24] isEqualToString:@"Fizz"], @"246 check 24");
    XCTAssert([[_checker_246 countOffOfInterger:42] isEqualToString:@"Fizz"], @"246 check 42");
}

@end
