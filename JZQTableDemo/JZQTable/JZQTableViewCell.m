//
//  JZQTableViewCell.m
//  JZQTableDemo
//
//  Created by das on 16/10/15.
//  Copyright © 2016年 das. All rights reserved.
//

#import "JZQTableViewCell.h"
#import "JZQTableView.h"

#define kCellTFWidth kViewWidth/self.titleArr.count

@implementation JZQTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    for (int i = 0; i<_titleArr.count; i++) {
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(kCellTFWidth*i, 0, kCellTFWidth, kViewHeight)];
        label.layer.borderColor = [UIColor blackColor].CGColor;
        label.layer.borderWidth = 1;
        label.textAlignment = NSTextAlignmentCenter;
        label.backgroundColor = [UIColor clearColor];
        
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

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
