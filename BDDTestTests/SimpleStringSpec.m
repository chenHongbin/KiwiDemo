//
//  SimpleStringSpec.m
//  BDDTest
//
//  Created by oldchen on 14-7-30.
//  Copyright (c) 2014年 ND.com.cn. All rights reserved.
//

#import <Kiwi/Kiwi.h>

SPEC_BEGIN(SimpleStringSpec)

describe(@"SimpleString", ^{
    
    pending(@"need a text example", ^{
        
    });
    
    xit(@"need a test example with xit macro", ^{
        
    });
    
    beforeAll(^{
        NSLog(@"run beforeAll block");
    });
    
    afterAll(^{
        NSLog(@"run afterAll block");
    });
    
    beforeEach(^{
        NSLog(@"run beforeEach block");
    });
    
    afterEach(^{
        NSLog(@"run afterEach block");
    });
    
   context(@"when assigned to 'Hello world' ", ^{
       NSString *greeting = @"Hello world";
       it(@"should exist", ^{
           [[greeting shouldNot] beNil];
       });
       
       it(@"should equal to 'Hello world' ", ^{
           [[greeting should] equal:@"Hello world"];
       });
       
       specify(^{
           [[greeting should] beNonNil];
       });
   });
});

SPEC_END
