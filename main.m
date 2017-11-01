//
//  main.m
//  Maths
//
//  Created by Murat Ekrem Kolcalar on 10/31/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "UserInput.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        UserInput *userInput = [[UserInput alloc]init];
        QuestionManager* questionManager = [[QuestionManager alloc]init];
        QuestionFactory* questionFactory = [[QuestionFactory alloc]init];
        //ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        NSInteger correctScore = 0;
        NSInteger incorrectScore = 0;
        
        while (gameOn == YES) {
            
            Question *randomQuestion = [questionFactory generateRandomQuestion];
            NSLog(@"%@",randomQuestion.question);
            [questionManager.questions addObject: randomQuestion];
            
            NSString *answer = [UserInput userInput];
            NSInteger integerizedAnswer = [answer intValue];
            
            //NSInteger totalQuestions = correctScore + incorrectScore;
            //NSInteger successRate = 0;
            //NSInteger successRate = (correctScore * 100) / totalQuestions; WHY DON'T YOU WORK?!
            
            if (integerizedAnswer == randomQuestion.answer) {
                NSLog(@"YEP!");
                correctScore+=1;
            } else if ([answer  isEqual: @"done"]) {
                NSLog(@"FINE! Bye.");
                gameOn = NO;
                NSLog(@"Correct: %ld - Incorrect: %ld - Rate: 0", correctScore, incorrectScore);
                NSLog(@"%@", [questionManager timeOutput:questionManager.questions]);
                break;
            } else {
                NSLog(@"NOPE!");
                incorrectScore+=1;
            }
            
        }
        
    }
    return 0;
}
