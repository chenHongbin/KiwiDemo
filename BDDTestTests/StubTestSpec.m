//
//  StubTestSpec.m
//  BDDTest
//
//  Created by oldchen on 14-7-31.
//  Copyright (c) 2014年 ND.com.cn. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "Person.h"

SPEC_BEGIN(StubTestSpec)

describe(@"Person Object Test", ^{
    
    __block Person *person;
    beforeEach(^{
        person = [Person somePerson];
//        [person stub:@selector(name) andReturn:@"Tom"];
//        [person stub:@selector(personDespriction:sex:) withArguments:@"Tom", @"Female"];
        
        [person stub:@selector(personDespriction:sex:) withBlock:^id(NSArray *params) {
            NSLog(@"params %@", params);
            return @"test stub";
        }];
        
    });
    
    context(@"Give a Person with name CHB", ^{
        
        it(@"Person need a name", ^{
//            person.name = @"CHB";
//            NSString *testName = [person name];
//            [[testName should] equal:@"Tom"];
        });
        
        it(@"Person with name and sex", ^{
            NSString *des1 = [person personDespriction:@"CHV " sex:@"male"];
            NSString *des2 = [person personDespriction:@"Tom"  sex:@"Female"];
            NSLog(@"des1 = %@, des2 = %@", des1, des2);
        });
    });
    
});

SPEC_END