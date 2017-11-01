//
//  Question.m
//  Maths
//
//  Created by Murat Ekrem Kolcalar on 10/31/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "Question.h"
#import "MultiplyQuestion.h"

@implementation Question

- (instancetype)init {
    
    if (self = [super init]) {
        
        _leftValue = arc4random_uniform(101);
        _rightValue = arc4random_uniform(101);
        //_question = [NSString stringWithFormat: @"%ld mathSymbol %ld = ?",(long)_leftValue, (long)_rightValue];
        _startTime = [NSDate date];
        
    }
    
    return self;
    
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    NSTimeInterval answerTime;
    answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
    return answerTime;
}

- (NSDate*)averageTime {
    return [NSDate dateWithTimeInterval:self.answerTime / 2 sinceDate:_startTime];
}

- (void) generateQuestion {
    
}

@end
