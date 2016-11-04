//
//  JZQTableViewController.h
//  JZQTableDemo
//
//  Created by das on 16/10/15.
//  Copyright © 2016年 das. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kCellReuseIdentifier @"Cell"
#define KHeaderReuseIdentifier @"Header"

#define kViewWidth self.frame.size.width
#define kViewHeight self.frame.size.height

@interface JZQTableView : UIView<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

/*        表头内容设置           */
//表头内容数组  必须设置
@property (strong, nonatomic) NSArray *headerTitleArr;
//表头背景颜色
@property (strong, nonatomic) UIColor *headerViewBackgroundColor;
//表头字体颜色
@property (strong, nonatomic) UIColor *headerViewFontColor;
//表头字体大小
@property (assign, nonatomic) CGFloat headerViewFontSize;
//表头高度     默认54
@property (assign, nonatomic) CGFloat headerViewHeight;
//表头边框宽度  默认1
@property (assign ,nonatomic) CGFloat headerViewBorderWidth;
//表头边框颜色  默认黑色
@property (strong, nonatomic) UIColor *headerViewBorderColor;

/*       表格内容设置           */
//表格内容数组  必须设置
@property (strong, nonatomic) NSArray *tableCellTextArr;
//表格背景颜色
@property (strong, nonatomic) UIColor *tableCellBackgroundColor;
//表格字体颜色
@property (strong, nonatomic) UIColor *tableCellFontColor;
//表格字体大小
@property (assign, nonatomic) CGFloat tableCellFontSize;
//表格cell高度 默认44
@property (assign, nonatomic) CGFloat tableCellHeight;
//表格边框宽度  默认1
@property (assign ,nonatomic) CGFloat tableCellBorderWidth;
//表格边框颜色  默认黑色
@property (strong, nonatomic) UIColor *tableCellBorderColor;



//绘制表格
- (void)drawTable;
@end
