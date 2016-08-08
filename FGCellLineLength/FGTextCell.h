//
//  FGTextCell.h
//  FGCellLineLength
//
//  Created by 段鹏飞 on 16/8/8.
//  Copyright © 2016年 SuperFG. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    CellHeightTypeDefault = 0,
    CellHeightTypeHeader,
    CellHeightTypeFooter
}CellHeightType;

@interface FGTextCell : UITableViewCell

- (void)configTitle:(NSString *)title;
+ (CGFloat)heightWithType:(CellHeightType)type;

@end
