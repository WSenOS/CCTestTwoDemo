//
//  CCListController.h
//  CCTestTwoDemo
//
//  Created by sen on 2019/1/10.
//  Copyright © 2019 sen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCListController : UIViewController
@property (nonatomic, strong) NSArray <CCModel *>* dataArray;

@end

NS_ASSUME_NONNULL_END
