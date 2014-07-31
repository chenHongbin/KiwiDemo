//
//  Person.m
//  BDDTest
//
//  Created by oldchen on 14-7-31.
//  Copyright (c) 2014年 ND.com.cn. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)somePerson
{
    return [Person new];
}

- (NSString *)personDespriction:(NSString *)name
                            sex:(NSString *)sex
{
    return [name stringByAppendingString:sex];
}
@end
