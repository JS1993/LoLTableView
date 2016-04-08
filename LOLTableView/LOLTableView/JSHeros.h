//
//  JSHeros.h
//  LOLTableView
//
//  Created by  江苏 on 16/4/8.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSHeros : NSObject
@property(copy,nonatomic)NSString* icon;
@property(copy,nonatomic)NSString* intro;
@property(copy,nonatomic)NSString* name;
@property(strong,nonatomic)NSArray* heros;
-(instancetype)initWithDict:(NSDictionary*)dict;
+(instancetype)herosWithDict:(NSDictionary*)dict;
+(NSArray*)heros;
@end
