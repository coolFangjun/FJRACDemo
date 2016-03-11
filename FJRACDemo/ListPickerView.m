//
//  ListPickerView.m
//  ControlSystem
//
//  Created by 小宸宸Dad on 16/3/9.
//  Copyright © 2016年 fj. All rights reserved.
//

#import "ListPickerView.h"

@interface ListPickerView ()<UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong,nonatomic)NSArray *pickArray;

@property (strong,nonatomic)void(^chooseStrBlock)(NSString *);


@end



@implementation ListPickerView

//
//- (UIPickerView *)_pickView{
//    
//    if (!_pickView) {
//        
//        _pickView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
//        _pickView.dataSource = self;
//        _pickView.delegate = self;
//        [self addSubview:_pickView];
//    }
//    return _pickView;
//    
//    
//}



- (instancetype)initWithData:(NSArray *)dataArray chooseStr:(void(^)(NSString *result))chooseStr{

    if (self  = [super init]) {
        
        self.pickArray = dataArray;
        self.delegate = self;
        self.dataSource = self;
        self.chooseStrBlock = chooseStr;
        [self loadViews];
    }
    return self;

}


- (void)loadViews{
    
//    [self.pickView mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//        make.edges.equalTo(self);
//        
//    }];
}



#pragma mark - PickerView Delegate
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}




- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return self.pickArray.count;
    
    
    
}


- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [self.pickArray objectAtIndex:row];
    
}



- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    NSLog(@"%ld",row);
    self.chooseStrBlock(self.pickArray[row]);
    
}





@end
