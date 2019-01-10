//
//  CCListController.m
//  CCTestTwoDemo
//
//  Created by sen on 2019/1/10.
//  Copyright © 2019 sen. All rights reserved.
//

#import "CCListController.h"
#import "CCListCell.h"

@interface CCListController () <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CCListController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_tableView registerNib:[UINib nibWithNibName:@"CCListCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"CCListCell"];
}

- (void)setDataArray:(NSArray *)dataArray {
    _dataArray = dataArray;
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CCListCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CCListCell" forIndexPath:indexPath];
    CCModel * m = self.dataArray[indexPath.row];
    cell.nameLabel.text = m.name;
    cell.iconImageView.image = [UIImage imageNamed:@"333.jpg"];
    if (indexPath.row == 2) {
        cell.iconImageView.image = [UIImage imageNamed:@"aaa.jpg"];
    }
    if (indexPath.row == 4) {
        cell.iconImageView.image = [UIImage imageNamed:@"bbb"];
    }

    return cell;
}

@end
