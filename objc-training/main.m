//
//  main.m
//  objc-training
//
//  Created by diescake on 2018/03/03.
//  Copyright © 2018年 diescake. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "main.h"

void trainingProc() {
    // Primitive Integer
    NSInteger i = 10;
    NSInteger ii = 20L;
    
    NSLog(@"%d, %d", i, ii);
    
    // NSNumber Class
    NSNumber *num1 = @10;
    NSNumber *num2 = @YES;
    
    NSLog(@"%@, %@", num1, num2);
    
    // String
    NSString *str1 = @"hello!!!";
    NSString *jpStr = @"こんにちは!!";
    NSLog(@"%@, %@", str1, jpStr);
    
    //// String concat
    NSString *result = [str1 stringByAppendingString:jpStr];
    NSLog(@"%@", result);
    
    // String replace
    result = [str1 stringByReplacingOccurrencesOfString:@"l" withString:@"o"];
    NSLog(@"%@", result);
    
    // Boolean value
    BOOL isTrue = YES;
    if (isTrue) {
        NSLog(@"TRUE!!!");
    } else {
        NSLog(@"FALSE!!!");
    }
    
    // ArrayList
    NSMutableArray *arr = [NSMutableArray array];
    [arr addObject:@10];
    [arr addObject:@"ほげらみあ"];
    [arr addObject:@NO];
    
    NSLog(@"arr length = %d", [arr count]);
    for (NSNumber *v in arr) {
        NSLog(@"%@", v);
    }
    
    // Array(Immutable)
    NSArray *iarr = @[@200, @"ふーばー", @YES];
    for (NSNumber *v in iarr) {
        NSLog(@"%@", v);
    }
    
    // Map
    NSMutableDictionary *fruits = [NSMutableDictionary dictionary];
    fruits[@"apple"] = @100;
    fruits[@"banana"] = @150;
    fruits[@"orange"] = @80;
    
    for (NSString *key in fruits) {
        NSLog(@"%@: %@", key, fruits[key]);
    }
}

@implementation Student

- (id)initWithName:(NSString *)name
{
    self = [super init];

    self.name = name;
    self.score = 50;
    self.favorite = Mathmatics;
    return self;
}

- (id)study
{
    self.score += 10;
    if (self.score > 100) {
        self.score = 100;
    }
    return self;
}

- (NSString *)description {
    return self.name;
}

@end

int main(int argc, char * argv[]) {
    trainingProc();

    id hogeo = [[Student alloc] initWithName:@"ほげ夫"];
    NSLog(@"%@: score=%ld", [hogeo name], (long)[hogeo score]);
  
    [hogeo study];
    NSLog(@"%@: score=%ld", [hogeo name], (long)[hogeo score]);

    [[[hogeo study]study]study];
    NSLog(@"%@: score=%ld", [hogeo name], (long)[hogeo score]);

    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
