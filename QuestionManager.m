//
//  QuestionManager.m
//  Maths
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString*) timeOutput:(NSMutableArray*) questions {
   
    NSTimeInterval totalTime = 0;
    NSInteger averageTime = 0; // look into this later
    for (Question *question in self.questions) {
        totalTime += question.answerTime;
    }
    
    return [NSString stringWithFormat:@"Total time: %f seconds, Average time: %ld seconds", totalTime, (long)averageTime];
}

@end
