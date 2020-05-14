//
//  SinglyLinkedList.m
//  algorithm
//
//  Created by Zhang on 2020/5/13.
//  Copyright © 2020 June. All rights reserved.
//

#import "SinglyLinkedList.h"

@implementation SinglyLinkedList

/**
 如果字符串是通过单链表来存储的，那该如 何来判断是一个回文串呢?你有什么好的解决思路呢?相应的时间空间复杂度又是多少呢?
 */

/**
 快慢指针定位中间节点
 从中间节点对前部分或者后半部分逆序
 一次循环比较，判断是否回文
 */

+ (void)test {
    NSInteger nodeCount = 2;
    NSMutableArray *nodeArray = [NSMutableArray arrayWithCapacity:nodeCount];
    
    for (NSInteger i = 1; i <= nodeCount; i++) {
        [nodeArray addObject:[ListNode nodeWithValue:i]];
    }
    
    for (NSInteger i = 0; i < nodeCount; i++) {
        ListNode *node = nodeArray[i];
        ListNode *nodeNext = nil;
        if (i + 1 < nodeCount) {
            nodeNext = nodeArray[i + 1];
        }
        node.next = nodeNext;
    }
    //
    ListNode *middleNode = [self middleNode:nodeArray.firstObject];
    //
    ListNode *reverseListNode = [self reverseListNode:middleNode];
    //
    BOOL isSame = [self compareListNodeA:nodeArray.firstObject nodeB:reverseListNode];
    NSLog(@"是否回文 = %d\n", isSame);
}

+ (ListNode *)middleNode:(ListNode *)pHead {
    ListNode *fastPointer = pHead;
    ListNode *slowPointer = pHead;
    
    while (fastPointer && fastPointer.next) {
        slowPointer = slowPointer.next;
        fastPointer = fastPointer.next.next;
    }
    
    return slowPointer;
}

+ (ListNode *)reverseListNode:(ListNode *)pHead {
    ListNode *pReverseHead = nil;
    ListNode *pNode = pHead;
    ListNode *pPrev = nil;
    
    while (pNode) {
        ListNode *pNext = pNode.next;
        if (!pNext.next) pReverseHead = pNode;
        pNode.next = pPrev;
        pPrev = pNode;
        pNode = pNext;
    }
    
    return pReverseHead;
}

+ (BOOL)compareListNodeA:(ListNode *)nodeA nodeB:(ListNode *)nodeB {
    ListNode *pHeadA = nodeA;
    ListNode *pHeadB = nodeB;
    
    while (pHeadA && pHeadB && pHeadA.value == pHeadB.value) {
        pHeadA = pHeadA.next;
        pHeadB = pHeadB.next;
    }
    
    return pHeadA == pHeadB || pHeadA.value == pHeadB.value;
}

@end
