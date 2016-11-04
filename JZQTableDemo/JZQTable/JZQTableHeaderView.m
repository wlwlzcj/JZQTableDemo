//
//  JZQTableHeaderView.m
//  JZQTableDemo
//
//  Created by das on 16/10/15.
//  Copyright © 2016年 das. All rights reserved.
//

#import "JZQTableHeaderView.h"
#import "JZQTableView.h"

#define kHeaderTFWidth kViewWidth/self.titleArr.count

@implementation JZQTableHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    for (int i = 0; i<_titleArr.count; i++) {
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.width/self.titleArr.count*i, 0, kHeaderTFWidth, kViewHeight)];
        label.textAlignment = NSTextAlignmentCenter;
        label.backgroundColor = [UIColor clearColor];
        label.layer.borderColor = [UIColor blackColor].CGColor;
        label.layer.borderWidth = 1;
        
        label.text = _titleArr[i];
        if (_borderColor) {
            label.layer.borderColor = _borderColor.CGColor;
        }
        if (_borderWidth) {
            label.layer.borderWidth = _borderWidth;
        }
        if (_fontSize) {
             label.font = [UIFont systemFontOfSize:_fontSize];
        }
        if (_fontColor) {
            label.textColor = _fontColor;
        }
       
        
        
        [self addSubview:label];
        
    }
    

    
}













@end
