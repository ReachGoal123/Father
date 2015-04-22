//
//  Singleton.h
//  Father
//
//  Created by wanglin on 14-12-19.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject
@property()NSUInteger num;

+(Singleton*)shareinstance;

@end
