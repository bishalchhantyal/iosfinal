//
//  ListViewController.m
//  myShoppingList
//
//  Created by LalmayaChhantyal on 29/5/19.
//  Copyright © 2019 LalmayaChhantyal. All rights reserved.
//

#import "ListViewController.h"



@interface ListViewController (){
   // NSArray *items;
   // NSMutableArray *date;
                     }
    
@property NSMutableArray *items;

@end

@implementation ListViewController

-(void)awakeFromNib {   mn 
    [super awakeFromNib];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self .itemslist = @[@"Apple",@"banana",@"orange",@"rice"];
    //date =@["2003",@"4",@"5",@"4"];
    
    // Do any additional setup after loading the view.
   // _items =[NSMutableArray array] ;
    
    //2
    /*NSInteger numberOfItems = 10;
    for (NSInteger i = 1; i <= numberOfItems; i++){
        NSString *item = [NSString stringWithFormat:@"Item #%lid", (long)i];
        [_items  addObject:item];*/
    }


/*-(void)didReceiveMemoryWarning {
[super didReceiveMemoryWarning];
}*/


/*#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   // if([[segue identifier] isEqualToString:@"showDetail"]){
       // NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
       //[[segue destinationViewController] setDetailitems:items];
        
    }*/

#pragma mark - Table view

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.itemslist count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *SimpleIdentifier =@"SimpleIdentifier";
    
    UITableViewCell *ItemCell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
    /*NSString *arrayDate =_items[indexPath.row];*/
    
   // ItemCell.textLabel.text = itemlist[indexPath.row];
    //return ItemCell;
    
    if(ItemCell==nil){
        ItemCell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleIdentifier];
    }
    ItemCell.textLabel.text = self.itemslist[indexPath.row];
    return ItemCell;
}

    /*
    itemCell *Cell = [_arrayDate objectAtIndex:indexPath.row];
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:1];
    UILabel *quantityLabel = (UILabel *)[cell viewWithTag:2];
 
   // UIButton *AddItemButton = (UIButton *)[cell viewWithTag:4];
    nameLabel.text=Cell.itemName;
    quantityLabel.text = Cell.itemQuantity;
    //AddItemButton.titleLabel.text=itemCell.;
    
    //doneButton.titleLabel.text= mainCell.itemButton;
    // Configure the cell...
    
    return cell;
}*/
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete){
        [_items removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }else{
        NSLog(@"unhandled editing style! %lid", (long)editingStyle);
    }
    }
@end

   
    
