//
//  ViewController.m
//  FJRACDemo
//
//  Created by 小宸宸Dad on 16/3/3.
//  Copyright © 2016年 fj. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa.h"
#import "Masonry.h"
#import "ListPickerView.h"
#import "FactoryTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.078 green:0.086 blue:0.122 alpha:1.000];
    
    UITextField *textField = textField = [FactoryTool factoryTextField:@"请选择" color:[UIColor blueColor]size:18];
    textField.backgroundColor = [UIColor grayColor];
    [self.view addSubview:textField];
    
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.equalTo(self.view);
        make.height.equalTo(@30);
        make.width.equalTo(self.view.mas_width).multipliedBy(0.5);
        
    }];
    
    NSArray *pickArray = @[@"Biny博客",@"www.xcode.cc"];
    ListPickerView *pickView = [[ListPickerView alloc]initWithData:pickArray chooseStr:^(NSString *result) {
      
        
        textField.text = result;
        
    }];
    
    textField.inputView = pickView;
    
    UIButton *postBtn = [FactoryTool factoryImageButton:@"确定"];
    [self.view addSubview:postBtn];
    
    [postBtn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.width.height.equalTo(@30);
        make.top.equalTo(textField.mas_bottom).with.offset(10);
        make.centerX.equalTo(textField.mas_centerX);
        
    }];
    
    
    //设置RAC,木有选择任何字符则返回no
    RACSignal *textSignal = [textField.rac_textSignal map:^id(NSString *text) {
        
        
        return text.length != 0 ? @(YES) : @(NO);
        
    }];
    
    RAC(textField,backgroundColor) = [textSignal map:^id(NSNumber *valid) {
      
         return [valid boolValue] ? [UIColor colorWithRed:1.000 green:0.998 blue:0.962 alpha:0.8]:[UIColor redColor];
        
    }];
    
    
    
}







- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{


    [self.view endEditing:YES];


}





@end
