//
//  QXCheckBox.m
//  QXCheckBox
//
//  Created by QinXin on 15/5/1.
//  Copyright (c) 2015年 labi3285_Lab. All rights reserved.
//

#import "QXCheckBox.h"

@interface QXCheckBox ()
@property (nonatomic, strong) UIImageView *icon;
@property (nonatomic, strong) UIImage *img_che;
@property (nonatomic, strong) UIImage *img_nor;
@end

@implementation QXCheckBox

+ (instancetype)checkBoxWithCheckedImgName:(NSString *)img_che andNoCheckImgName:(NSString *)img_nor {
    return [[self alloc] initWithCheckedImgName:img_che andNoCheckImgName:img_nor];
}

- (instancetype)initWithCheckedImgName:(NSString *)img_che andNoCheckImgName:(NSString *)img_nor {
    if (self = [super init]) {
        self.bounds = CGRectMake(0, 0, 14, 14);
        self.icon = [[UIImageView alloc] initWithFrame:self.bounds];
        [self addSubview:self.icon];
        self.img_che = [UIImage imageNamed:img_che];
        self.img_nor = [UIImage imageNamed:img_nor];
        [self setChecked:NO];
        [self addTarget:self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)setChecked:(BOOL)checked {
    if (checked != self.isChecked) _checked = checked;
    [self sendActionsForControlEvents:UIControlEventValueChanged]; // 添加事件
    if (_checked) {
        _icon.image = self.img_che;
    } else {
        _icon.image = self.img_nor;
    }
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:CGRectMake(frame.origin.x, frame.origin.y, 14, 14)];
}

- (void)setImg_che:(UIImage *)img_che {
    _img_che = img_che;
    if (self.isChecked) _icon.image = img_che;
}

- (void)setImg_nor:(UIImage *)img_nor {
    _img_nor = img_nor;
    if (!self.isChecked) _icon.image = img_nor;
}

- (void)clicked {
    self.checked = !self.isChecked;
}

@end
