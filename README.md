# QXCheckBoxDemo
A self created check box for IOS.(选择按钮控件)

The should-be CreateMethod:
```objc
    QXCheckBox *checkBox = [QXCheckBox checkBoxWithCheckedImgName:@"check_box_selected" andNoCheckImgName:@"check_box.png"];
    checkBox.center = self.view.center;
    [self.view addSubview:checkBox];
```

Adding a listener:
```objc
    [checkBox addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];
```

You can get or set whether it was checked:
```objc
    checkBox.isChecked;
    [chechBox setChecked: YES];
```
Have fun!
