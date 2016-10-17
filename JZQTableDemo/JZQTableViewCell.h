//
//  JZQTableViewCell.h
//  JZQTableDemo
//
//  Created by das on 16/10/15.
//  Copyright © 2016年 das. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZQTableViewCell : UITableViewCell
//cell内容数组
@property (strong, nonatomic) NSArray *titleArr;
//cell字体大小
@property (assign, nonatomic) CGFloat fontSize;
//字体颜色
@property (strong, nonatomic) UIColor *fontColor;
//边框宽度
@property (assign, nonatomic) CGFloat borderWidth;
//边框颜色
@property (strong, nonatomic) UIColor *borderColor;

@end
