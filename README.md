# BIZSelectedBackgroundForTabBarItem

*Wait for gif presentation, it's loading...*

![alt tag](https://github.com/bizibizi/BIZSelectedBackgroundForTabBarItem/blob/master/presentation2.gif)


BIZSelectedBackgroundForTabBarItem is a category for UITabBarController that adds ability to change background of UITabBar item.


# Installation

### Manually
- Copy BIZSelectedBackgroundForTabBarItem folder to your project 


# Usage

- ```#import "UITabBarController+BIZSelectedBackgroundForTabBarItem.h"``` to your subclass of UITabBarController
- implement UITabBarControllerDelegate delegate and handle clicks to tabBar items
```objective-c
@interface TabBarController () <UITabBarControllerDelegate>
@end


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Set delegate
    self.delegate = self;
    //Set initial selection
    [self selectBackgroundForItemAtIndex:0 backgroundColor:[UIColor redColor] withEarlySelect:YES animated:NO];
}


#pragma mark - UITabBarControllerDelegate


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    NSUInteger index = [self.tabBar.items indexOfObject:item];
    [self selectBackgroundForItemAtIndex:index backgroundColor:[UIColor redColor] withEarlySelect:NO animated:YES];
}
```


# Contact

Igor Bizi
- https://www.linkedin.com/in/igorbizi
- igorbizi@mail.ru


# License
 
The MIT License (MIT)

Copyright (c) 2015-present Igor Bizi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
