//
//  Person.h
//  BDDTest
//
//  Created by oldchen on 14-7-31.
//  Copyright (c) 2014年 ND.com.cn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

/** name */
@property (copy, nonatomic) NSString *name;

+ (instancetype)somePerson;

- (NSString *)personDespriction:(NSString *)name sex:(NSString *)sex;
@end
