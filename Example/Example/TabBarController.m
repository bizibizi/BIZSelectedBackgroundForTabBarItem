//
//  TabBarController.m
//  Example
//
//  Created by IgorBizi@mail.ru on 12/19/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "TabBarController.h"
#import "UITabBarController+BIZSelectedBackgroundForTabBarItem.h"


@interface TabBarController () <UITabBarControllerDelegate>
@end


@implementation TabBarController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Customization
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont systemFontOfSize:18]} forState:UIControlStateNormal];
    [[UITabBar appearance] setBarTintColor:[UIColor blueColor]];
    
    //Set delegate
    self.delegate = self;
    [self selectBackgroundForItemAtIndex:0 backgroundColor:[UIColor redColor] withEarlySelect:YES];
}


#pragma mark - UITabBarControllerDelegate


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    NSUInteger index = [self.tabBar.items indexOfObject:item];
    [self selectBackgroundForItemAtIndex:index backgroundColor:[UIColor redColor] withEarlySelect:NO];
}



@end
