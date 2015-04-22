//
//  Father.m
//  Father
//
//  Created by wanglin on 14-12-16.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import "Father.h"
#import "Singleton.h"
@implementation Father
-(id)init
{
    if (self = [super init]) {
        self.money = 100;
        [Singleton shareinstance].num = self.money;
    }
    return self;
}
-(void)showMoney
{
    NSLog(@"父类的钱money = %lu",_money);
}

@end
