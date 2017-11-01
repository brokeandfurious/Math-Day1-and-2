//
//  ScoreKeeper.h
//  Maths
//
//  Created by Murat Ekrem Kolcalar on 10/31/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger correctScore;
@property (nonatomic) NSInteger incorrectScore;
@property (nonatomic) NSInteger totalQuestions;
@property (nonatomic) NSInteger successRate;

@end
