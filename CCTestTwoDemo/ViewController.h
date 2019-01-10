//
//  ViewController.h
//  CCTestTwoDemo
//
//  Created by sen on 2019/1/10.
//  Copyright © 2019 sen. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface NSBundle (wgSubBundle)
//bundleName是和组件名字一样的
+ (instancetype)wg_subBundleWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass;

@end

@interface ViewController : UIViewController


@end

