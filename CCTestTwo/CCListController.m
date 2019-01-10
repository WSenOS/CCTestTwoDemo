//
//  CCListController.m
//  CCTestTwoDemo
//
//  Created by sen on 2019/1/10.
//  Copyright © 2019 sen. All rights reserved.
//

#import "CCListController.h"
#import "CCListCell.h"

@implementation NSBundle (wgSubBundle)

+ (instancetype)wg_subBundleWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass{
    //并没有拿到子bundle
    NSBundle *bundle = [NSBundle bundleForClass:targetClass];
    //在这个路径下找到子bundle的路径
    NSString *path = [bundle pathForResource:bundleName ofType:@"bundle"];
    //根据路径拿到子bundle
    return path?[NSBundle bundleWithPath:path]:[NSBundle mainBundle];
}

@end

@interface CCListController () <UITableViewDelegate,UITableViewDataSource>
{
    NSBundle * bundle;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CCListController

- (instancetype)init
{
    bundle = [NSBundle wg_subBundleWithBundleName:@"Resources" targetClass:[self class]];
    self = [super initWithNibName:@"CCListController" bundle:bundle];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [_tableView registerNib:[UINib nibWithNibName:@"CCListCell" bundle:bundle] forCellReuseIdentifier:@"CCListCell"];
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
        cell.iconImageView.image = [UIImage imageWithContentsOfFile:[bundle pathForResource:@"bbb" ofType:@"png"]];
    }

    return cell;
}

@end
