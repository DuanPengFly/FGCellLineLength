//
//  FGTextCell.m
//  FGCellLineLength
//
//  Created by 段鹏飞 on 16/8/8.
//  Copyright © 2016年 SuperFG. All rights reserved.
//

#import "FGTextCell.h"

@interface FGTextCell ()

@property (strong, nonatomic) UILabel *textLB;

@end

@implementation FGTextCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        [self.contentView addSubview:self.textLB];
    }
    return self;
}

- (UILabel *)textLB
{
    if (!_textLB) {
        _textLB = [[UILabel alloc] initWithFrame:CGRectMake(100, 10, 300, 24)];
//        _textLB.backgroundColor = [UIColor redColor];
    }
    return _textLB;
}

- (void)configTitle:(NSString *)title
{
    _textLB.text = title;
}

+ (CGFloat)heightWithType:(CellHeightType)type
{
    switch (type) {
        case CellHeightTypeDefault:
            return 44;
            break;
            
        case CellHeightTypeHeader:
            return 20;
            break;
            
        case CellHeightTypeFooter:
            return 0.1;
            break;
            
        default:
            break;
    }
}
@end
