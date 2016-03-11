//
//  FactoryTool.h
//  ControlSystem
//
//  Created by 小宸宸Dad on 16/3/8.
//  Copyright © 2016年 fj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FactoryTool : NSObject

+ (UIButton *)factoryButton:(NSString *)title color:(UIColor *)color;


+ (UIButton *)factoryImageButton:(NSString *)imageStr;

+ (UILabel *)factoryLabel:(NSString *)text color:(UIColor *)color size:(NSInteger)size;

+ (UITextField *)factoryTextField:(NSString *)placeText color:(UIColor *)color size:(NSInteger)size;



@end
