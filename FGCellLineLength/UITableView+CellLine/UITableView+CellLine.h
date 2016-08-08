//
//  UITableView+CellLine.h
//  FGCellLineLength
//
//  Created by 段鹏飞 on 16/8/8.
//  Copyright © 2016年 SuperFG. All rights reserved.
//


#import <UIKit/UIKit.h>

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 blue:((float)(rgbValue & 0x0000FF))/255.0 alpha:1.0]

@interface UITableView (CellLine)

/**
 *  设置边距原始方法
 *
 *  @param cell           cell
 *  @param indexPath      indexPath
 *  @param indexPath      左边距
 *  @param rightSpace     右边距
 *  @param hasSectionLine 是否有Section线
 */
- (void)addLineForCell:(UITableViewCell *)cell
             indexPath:(NSIndexPath *)indexPath
             leftSpace:(CGFloat)leftSpace
            rightSpace:(CGFloat)rightSpace
           sectionLine:(BOOL)hasSectionLine;
/**
 *  设置左边距, hasSectionLine默认为YES
 *
 *  @param cell      cell
 *  @param indexPath indexPath
 *  @param leftSpace 左边距, 右边距默认为0
 */
- (void)addLineForCell:(UITableViewCell *)cell
              indexPath:(NSIndexPath *)indexPath
              leftSpace:(CGFloat)leftSpace;

/**
 *  设置左右边距, hasSectionLine默认为YES
 *
 *  @param cell       cell
 *  @param indexPath  indexPath
 *  @param leftSpace  左边距
 *  @param rightSpace 右边距
 */
- (void)addLineForCell:(UITableViewCell *)cell
              indexPath:(NSIndexPath *)indexPath
              leftSpace:(CGFloat)leftSpace
             rightSpace:(CGFloat)rightSpace;

@end
