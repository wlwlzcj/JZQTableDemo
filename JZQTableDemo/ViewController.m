//
//  ViewController.m
//  JZQTableDemo
//
//  Created by das on 16/10/15.
//  Copyright © 2016年 das. All rights reserved.
//

#import "ViewController.h"
#import "JZQTableView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet JZQTableView *JZQTable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
// 代码使用
//    JZQTableView *view = [[JZQTableView alloc]initWithFrame:CGRectMake(10, 10, 200, 300)];
//    [self.view addSubview:view];
//    
//    view.headerTitleArr = @[@"1",@"2",@"3",@"4"];
//    
//    view.tableCellTextArr = @[@[@"4",@"3",@"2",@"1"],@[@"1",@"2",@"3",@"4"],@[@"1",@"2",@"3",@"4"]];
//    [view drawTable];
    
    
    
//storyboard使用
    self.JZQTable.headerTitleArr = @[@"1",@"2",@"3",@"4"];
    self.JZQTable.tableCellTextArr = @[@[@"4",@"3",@"2",@"1"],@[@"4",@"3",@"2",@"1"],@[@"4",@"3",@"2",@"1"],@[@"4",@"3",@"2",@"1"],@[@"4",@"3",@"2",@"1"],@[@"4",@"3",@"2",@"1"]];
    
    
    self.JZQTable.headerViewBackgroundColor = [UIColor brownColor];
    self.JZQTable.tableCellFontColor = [UIColor redColor];
    self.JZQTable.tableCellFontSize = 20;
    
    
    [self.JZQTable drawTable];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
