//
//  JSHeros.m
//  LOLTableView
//
//  Created by  江苏 on 16/4/8.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSHeros.h"

@implementation JSHeros
-(instancetype)initWithDict:(NSDictionary*)dict{
    self=[super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)herosWithDict:(NSDictionary*)dict{
    return [[self alloc]initWithDict:dict];
}
+(NSArray*)heros{
    NSMutableArray* arrM=[NSMutableArray array];
    NSArray* arr=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"heros" ofType:@"plist"]];
    for (NSDictionary* dic in arr ) {
        [arrM addObject:[self herosWithDict:dic]];
    }
    return arrM;
}

@end
