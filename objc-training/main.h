//
//  main.h
//  objc-training
//
//  Created by diescake on 2018/03/03.
//  Copyright © 2018年 diescake. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef main_h
#define main_h

typedef NS_ENUM(NSInteger, Subject) {
    Japanese,
    English,
    Mathmatics,
    Science,
    History,
};

@interface Student : NSObject
@property(nonatomic)NSString *name;
@property(readonly, nonatomic) NSInteger score;
@property(nonatomic) Subject favorite;

- (id)initWithName: (NSString*)name;
- (id)study;
@end


#endif /* main_h */
