//
//  ListPickerView.h
//  ControlSystem
//
//  Created by 小宸宸Dad on 16/3/9.
//  Copyright © 2016年 fj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListPickerView : UIPickerView


- (instancetype)initWithData:(NSArray *)dataArray chooseStr:(void(^)(NSString *result))chooseStr;

@end
