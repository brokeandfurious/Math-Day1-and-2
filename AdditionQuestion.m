//
//  AdditionQuestion.m
//  Maths
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    self.question = [NSString stringWithFormat:@"%ld + %ld = ?", self.leftValue, self.rightValue];
    self.answer = self.leftValue + self.rightValue;
}

@end
