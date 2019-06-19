//
//  detailViewController.m
//  myShoppingList
//
//  Created by LalmayaChhantyal on 29/5/19.
//  Copyright © 2019 LalmayaChhantyal. All rights reserved.
//

#import "detailViewController.h"

@interface detailViewController ()

    @end
@implementation detailViewController
#pragma mark - Managment the detail item
-(void)setDetailItem:(id)newdetailItem{
    if(_detailItem != newdetailItem){
        _detailItem = newdetailItem;
        //update the view
        [self configureView];
        
    }

    }

-(void)configureView{
    if (self.detailItem){
        //self.detailLabel.text =[self.detailItem description ];
    }
}
-(void)viewDidLoad{
    [super viewDidLoad];
    [self configureView];
}
-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

   /* NSMutableArray *itemArray;
    NSMutableArray *itemQuantityArray;
    
    
}



@implementation detailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    itemArray = [NSMutableArray arrayWithArray:@[@"Apple",@"banana",@"orange",@"rice"]];
    
    itemQuantityArray =[NSMutableArray arrayWithArray:@[@"1kg",@"2kg",@"1kg",@"10kg"]];
}


//#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"detailCell" forIndexPath:indexPath];
    
    NSString *item = itemArray[indexPath.row];
    cell.textLabel.text = item;
    
   NSString *quantity = itemQuantityArray[indexPath.row];
    cell.detailTextLabel.text;
    return cell;
    
 */


@end
