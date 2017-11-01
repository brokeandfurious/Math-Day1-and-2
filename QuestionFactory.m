//
//  QuestionFactory.m
//  Maths
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (Question*) generateRandomQuestion {
    _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplyQuestion", @"DivisionQuestion"];
    int indexRandom = arc4random_uniform(3);
    NSString* randomQuestionType = _questionSubclassNames [indexRandom];
    Question* randomQuestion = [[NSClassFromString(randomQuestionType)alloc]init];
    return randomQuestion;
}

@end
