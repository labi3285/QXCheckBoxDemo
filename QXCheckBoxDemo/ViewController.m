//
//  ViewController.m
//  QXCheckBoxDemo
//
//  Created by QinXin on 15/6/14.
//  Copyright (c) 2015年 labi3285_Lab. All rights reserved.
//

#import "ViewController.h"
#import "QXCheckBox.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    QXCheckBox *checkBox = [QXCheckBox checkBoxWithCheckedImgName:@"check_box_selected" andNoCheckImgName:@"check_box.png"];
        
    checkBox.center = self.view.center;
    
    [self.view addSubview:checkBox];
    
    [checkBox addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];

}

- (void)valueChange:(QXCheckBox *)checkBox {
    NSLog(@"current value: %d", checkBox.isChecked);
}



@end
