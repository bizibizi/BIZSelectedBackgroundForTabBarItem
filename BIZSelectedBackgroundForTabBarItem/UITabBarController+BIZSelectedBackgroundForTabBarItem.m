//
//  UITabBarController+BIZSelectedBackgroundForTabBarItem.m
//  Example
//
//  Created by IgorBizi@mail.ru on 12/19/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "UITabBarController+BIZSelectedBackgroundForTabBarItem.h"


@implementation UITabBarController (BIZSelectedBackgroundForTabBarItem)


- (void)selectBackgroundForItemAtIndex:(NSUInteger)index backgroundColor:(UIColor *)backgroundColor withEarlySelect:(BOOL)earlySelect
{
    if (!self.tabBar.items.count) {
        return;
    }
    
    CALayer *selectedLayer;
    NSString *selectedLayerKey = @"selectedLayerKey";
    for (CALayer *layer in self.tabBar.layer.sublayers)
    {
        if ([layer.name isEqualToString:selectedLayerKey]) {
            selectedLayer = layer;
        }
    }
    
    //Add new layer
    CGFloat w = self.tabBar.bounds.size.width / self.tabBar.items.count;
    CGFloat h = self.tabBar.bounds.size.height;
    CGFloat x = index * w;
    CGFloat y = 0.0;
    CGRect frame = CGRectMake(x, y, w, h);
    
    if (!selectedLayer) {
        selectedLayer = [CALayer layer];
        selectedLayer.name = selectedLayerKey;
        selectedLayer.backgroundColor = backgroundColor.CGColor;
    }
    selectedLayer.frame = frame;
    
    // * Need to enable selection of TabBarItem before View appearence, then view appears and then user select tab.
    // * Then view appears to tabBar added more layers by the system
    unsigned indexOfLayer = earlySelect ? 0 : 1;
    [self.tabBar.layer insertSublayer:selectedLayer atIndex:indexOfLayer];
}

@end
