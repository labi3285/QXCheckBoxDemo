//
//  QXCheckBox.h
//  QXCheckBox
//
//  Created by QinXin on 15/5/1.
//  Copyright (c) 2015年 labi3285_Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QXCheckBox : UIControl

+ (instancetype)checkBoxWithCheckedImgName:(NSString *)img_che andNoCheckImgName:(NSString *)img_nor;

@property (nonatomic, assign, getter=isChecked) BOOL checked;

@end
