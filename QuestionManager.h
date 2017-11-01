//
//  QuestionManager.h
//  Maths
//
//  Created by Murat Ekrem Kolcalar on 11/1/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray* questions;
//@property (nonatomic) NSString* timeOutput;

- (NSString*) timeOutput:(NSMutableArray*) questions;

@end
