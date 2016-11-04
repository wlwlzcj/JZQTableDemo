//
//  JZQTableViewController.m
//  JZQTableDemo
//
//  Created by das on 16/10/15.
//  Copyright © 2016年 das. All rights reserved.
//

#import "JZQTableView.h"
#import "JZQTableViewCell.h"
#import "JZQTableHeaderView.h"


@interface JZQTableView ()



@end


@implementation JZQTableView




- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kViewWidth, kViewHeight)];
    [self addSubview:self.tableView];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass:[JZQTableViewCell class] forCellReuseIdentifier:kCellReuseIdentifier];
    [self.tableView registerClass:[JZQTableHeaderView class] forHeaderFooterViewReuseIdentifier:KHeaderReuseIdentifier];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    
   
    
}

- (instancetype)initWithFrame:(CGRect)frame
{
    
    self =  [super initWithFrame:frame];
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kViewWidth, kViewHeight)];
    [self addSubview:self.tableView];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass:[JZQTableViewCell class] forCellReuseIdentifier:kCellReuseIdentifier];
    [self.tableView registerClass:[JZQTableHeaderView class] forHeaderFooterViewReuseIdentifier:KHeaderReuseIdentifier];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    
    
    return self;
}




- (void)drawTable
{
    
    [self.tableView reloadData];    
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    
    return self.tableCellTextArr.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JZQTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellReuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.titleArr = self.tableCellTextArr[indexPath.row];
//    背景颜色
    if (_tableCellBackgroundColor) {
        cell.backgroundColor = _tableCellBackgroundColor;
    }
//    字体大小
    if (_tableCellFontSize) {
        cell.fontSize = _tableCellFontSize;
    }
//    字体颜色
    if (_tableCellFontColor) {
        cell.fontColor = _tableCellFontColor;
    }
//    边框颜色
    if (_tableCellBorderColor) {
        cell.borderColor = _tableCellBorderColor;
    }
//    边框宽度
    if (_tableCellBorderWidth) {
        cell.borderWidth = _tableCellBorderWidth;
    }
        
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    JZQTableHeaderView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:KHeaderReuseIdentifier];
    
    headerView.titleArr = _headerTitleArr;
//    设置背景颜色
    if (self.headerViewBackgroundColor) {
        headerView.contentView.backgroundColor = self.headerViewBackgroundColor;
    }
//    设置字体大小
    if (self.headerViewFontSize) {
        headerView.fontSize = _headerViewFontSize;
    }
//    设置字体颜色
    if (self.headerViewFontColor) {
        headerView.fontColor = _headerViewFontColor;
    }
//    边框颜色
    if (_headerViewBorderColor) {
        headerView.borderColor = _headerViewBorderColor;
    }
//    边框宽度
    if (_headerViewBorderWidth) {
        headerView.borderWidth = _headerViewBorderWidth;
    }
    return headerView;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
//    表头高度
    if (self.headerViewHeight) {
        return _headerViewHeight;
    }
    return 54;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    cell高度
    if (self.tableCellHeight) {
        return _tableCellHeight;
    }
    return 44;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
