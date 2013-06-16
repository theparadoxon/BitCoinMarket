//
//  MasterViewController.m
//  myArrayMaster
//
//  Created by Stephan Lippert on 16.06.13.
//  Copyright (c) 2013 Stephan Lippert. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@interface MasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"BitCoinMarkets", @"BitCoinMarkets");
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.navigationItem.leftBarButtonItem = self.editButtonItem;

    //UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    //self.navigationItem.rightBarButtonItem = addButton;
    
    
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
    //myArray =[[NSMutableArray alloc] initWithObjects:@"MtGOX", @"btc-e", @"bitcoin.de", nil];

    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myArray count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

/*
    NSDate *object = _objects[indexPath.row];
    cell.textLabel.text = [object description];
  
 */
    Market *tempMarket = [myArray objectAtIndex:indexPath.row];
    cell.textLabel.text = [tempMarket getboerse];
 return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    /*
    if (!self.detailViewController) {
        self.detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    }
    NSDate *object = _objects[indexPath.row];
    self.detailViewController.detailItem = object;
    [self.navigationController pushViewController:self.detailViewController animated:YES];

     
 */
    
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
