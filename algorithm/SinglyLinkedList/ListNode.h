//
//  ListNode.h
//  algorithm
//
//  Created by Zhang on 2020/5/13.
//  Copyright © 2020 June. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListNode : NSObject

@property (nonatomic, assign) NSInteger value;
@property (nonatomic, strong) ListNode *next;

+ (instancetype)nodeWithValue:(NSInteger)value;

@end

NS_ASSUME_NONNULL_END
