//
//  ModelController.h
//  Array
//
//  Created by Stephan Lippert on 16.06.13.
//  Copyright (c) 2013 Stephan Lippert. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end
