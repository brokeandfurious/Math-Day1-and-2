//
//  UserInput.m
//  Maths
//
//  Created by Murat Ekrem Kolcalar on 10/31/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

+ (NSString*) userInput {
    
    char inputChars[255];
    printf("Input answer: ");
    fgets(inputChars, 255, stdin);
    NSString *inputAnswer = [NSString stringWithUTF8String:inputChars];
    NSString *editedInput = [inputAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return editedInput;
    
}

@end
