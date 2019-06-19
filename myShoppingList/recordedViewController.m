//
//  recordedViewController.m
//  myShoppingList
//
//  Created by LalmayaChhantyal on 29/5/19.
//  Copyright © 2019 LalmayaChhantyal. All rights reserved.
//

#import "recordedViewController.h"

@interface recordedViewController (){
    NSMutableArray *listArray;
    NSMutableArray *dateArray;
}

@end

@implementation recordedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    listArray =[NSMutableArray arrayWithArray:@[@"list1",@"list2",@"list3",@"list4"]];
    dateArray =[NSMutableArray arrayWithArray:@[@"may 3",@"may 10",@"may 18",@"may 24"]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 */
#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return listArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString *list = listArray[indexPath.row];
    cell.textLabel.text = list;
    
    //NSString *date = dateArray[indexPath.row];
    cell.detailTextLabel.text = dateArray[indexPath.row];
    return cell;
}
    

@end
