//
//  UITabBarController+BIZSelectedBackgroundForTabBarItem.h
//  Example
//
//  Created by IgorBizi@mail.ru on 12/19/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UITabBarController (BIZSelectedBackgroundForTabBarItem)
- (void)selectBackgroundForItemAtIndex:(NSUInteger)index backgroundColor:(UIColor *)backgroundColor withEarlySelect:(BOOL)earlySelect animated:(BOOL)animated;
@end
