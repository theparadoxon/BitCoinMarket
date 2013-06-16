//
//  ViewController.m
//  ArrayPage
//
//  Created by Stephan Lippert on 16.06.13.
//  Copyright (c) 2013 Stephan Lippert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    Market *myMarket1 = [[Market alloc] init];
    [myMarket1 setBoerse:@"MtGox"];
    [myMarket1 setWaehrung:@"EUR"];
    [myMarket1 setKurs:85.50];
    
    Market *myMarket2 = [[Market alloc] init];
    [myMarket2 setBoerse:@"MtGox"];
    [myMarket2 setWaehrung:@"USD"];
    [myMarket2 setKurs:110.50];
    
    Market *myMarket3 = [[Market alloc] init];
    [myMarket3 setBoerse:@"bitcoin.de"];
    [myMarket3 setWaehrung:@"EUR"];
    [myMarket3 setKurs:83.20];
    
    Market *myMarket4 = [[Market alloc] init];
    [myMarket4 setBoerse:@"btc-e"];
    [myMarket4 setWaehrung:@"EUR"];
    [myMarket4 setKurs:84.50];
    
    
    
    
    
    

    
    
    
    myArray =[[NSMutableArray alloc] initWithObjects:myMarket1, myMarket2, myMarket3, myMarket4, nil];
    
              
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
