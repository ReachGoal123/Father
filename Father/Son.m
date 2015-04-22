//
//  Son.m
//  Father
//
//  Created by wanglin on 14-12-16.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import "Son.h"

@implementation Son
-(void)showFatherMoney
{
    NSLog(@"money =%lu",[Singleton shareinstance].num);
}


@end
