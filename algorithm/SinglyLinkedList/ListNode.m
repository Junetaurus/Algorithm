//
//  ListNode.m
//  algorithm
//
//  Created by Zhang on 2020/5/13.
//  Copyright © 2020 June. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

+ (instancetype)nodeWithValue:(NSInteger)value {
    ListNode *node = [[self alloc] init];
    node.value = value;
    return node;;
}

@end
