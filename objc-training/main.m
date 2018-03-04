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
//{
//    NSString *name;
//    NSInteger score;
//    Subject favorite;
//}

@synthesize name;
@synthesize score;
@synthesize favorite;
//@synthesize favorite = good;

- (id)initWithName:(NSString *)str
{
    self = [super init];

    name = str;
    score = 50;
    favorite = Mathmatics;
    return self;
}

- (id)study
{
    score += 10;
    if (score > 100) {
        score = 100;
    }
    return self;
}

- (NSString *)description {
    return name;
}

@end

int main(int argc, char * argv[]) {
//    trainingProc();

    Student *hogeo = [[Student alloc] initWithName:@"ほげ夫"];
    NSLog(@"%@: %d score=%d", [hogeo name], [hogeo favorite], [hogeo score]);
  
    [hogeo setName:@"ふー美"]; // auto created setter

    [[[hogeo study]study]study];
    NSLog(@"%@: %d score=%d", [hogeo name], [hogeo favorite], [hogeo score]);
    NSLog(@"name: %@", hogeo); // description called
    
    // dot operator for accessor
    hogeo.name = @"ばー助";
    NSLog(@"%@: %d score=%d", hogeo.name, hogeo.favorite, hogeo.score);
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
