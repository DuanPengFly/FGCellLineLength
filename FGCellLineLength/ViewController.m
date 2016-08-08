//
//  ViewController.m
//  FGCellLineLength
//
//  Created by 段鹏飞 on 16/8/8.
//  Copyright © 2016年 SuperFG. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+CellLine.h"
#import "FGTextCell.h"

static NSString *const kCellIdentity = @"cellIdentity";
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *lineTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"自定义cell线的长度";
    _lineTableView = ({
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [tableView registerClass:[FGTextCell class] forCellReuseIdentifier:kCellIdentity];
//        tableView.backgroundColor = UIColorFromRGB(0xeeeeee);
        [self.view addSubview:tableView];
        tableView;
    });
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (0 == section) {
        return 1;
    }else if (1 == section){
        return 3;
    }else if (2 == section){
        return 3;
    }else{
        return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FGTextCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentity forIndexPath:indexPath];
    [cell configTitle:[NSString stringWithFormat:@"section: %ld, row: %ld", indexPath.section,indexPath.row]];
    if (1 == indexPath.section) {
        [tableView addLineForCell:cell indexPath:indexPath leftSpace:15];
    }else if (2 == indexPath.section){
        [tableView addLineForCell:cell indexPath:indexPath leftSpace:15 rightSpace:15];
    }else if (3 == indexPath.section){
       [tableView addLineForCell:cell indexPath:indexPath leftSpace:100 rightSpace:100];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [FGTextCell heightWithType:CellHeightTypeDefault];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return [FGTextCell heightWithType:CellHeightTypeHeader];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return [FGTextCell heightWithType:CellHeightTypeFooter];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *headView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetMaxX(self.view.frame), 20)];
    headView.backgroundColor = UIColorFromRGB(0xeeeeee);
    if (0 == section) {
        headView.text = @"一个cell, 距离左右边距为0";
    }else if (1 == section){
        headView.text = @"距离左边距15";
    }else if(2 == section){
        headView.text = @"距离左右边距15";
    }else{
        headView.text = @"距离左右边距100";
    }
    return headView;
}




@end
