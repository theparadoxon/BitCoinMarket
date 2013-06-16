//
//  MasterViewController.h
//  myArrayMaster
//
//  Created by Stephan Lippert on 16.06.13.
//  Copyright (c) 2013 Stephan Lippert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Market.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController
{
    NSMutableArray *myArray;
}
@property (strong, nonatomic) DetailViewController *detailViewController;

@end
