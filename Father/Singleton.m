//
//  Singleton.m
//  Father
//
//  Created by wanglin on 14-12-19.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton



static Singleton*share = nil;
+(Singleton*)shareinstance
{
    if (!share)
    {
     share = [[Singleton alloc]init];
        
    }
    return share;

}
@end
