//
//  DetailViewController.h
//  myArrayMaster
//
//  Created by Stephan Lippert on 16.06.13.
//  Copyright (c) 2013 Stephan Lippert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
