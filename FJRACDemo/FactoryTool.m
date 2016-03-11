//
//  FactoryTool.m
//  ControlSystem
//
//  Created by 小宸宸Dad on 16/3/8.
//  Copyright © 2016年 fj. All rights reserved.
//

#import "FactoryTool.h"

@implementation FactoryTool


+ (UIButton *)factoryButton:(NSString *)title color:(UIColor *)color{
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    button.backgroundColor = color;
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    return button;
    
    
}


+ (UIButton *)factoryImageButton:(NSString *)imageStr{

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:imageStr] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor clearColor];
    return button;

}



+ (UILabel *)factoryLabel:(NSString *)text color:(UIColor *)color size:(NSInteger)size{


    UILabel *label = [[UILabel alloc]init];
    label.textColor = color;
    label.text = text;
    label.font = [UIFont systemFontOfSize:size];
    return label;

}

+ (UITextField *)factoryTextField:(NSString *)placeText color:(UIColor *)color size:(NSInteger)size{
    
    UITextField *textField = [[UITextField alloc]init];
    textField.placeholder = placeText;
    textField.textColor = color;
    textField.font = [UIFont systemFontOfSize:size];
    return textField;

}





@end
