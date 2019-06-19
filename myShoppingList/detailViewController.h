//
//  detailViewController.h
//  myShoppingList
//
//  Created by LalmayaChhantyal on 29/5/19.
//  Copyright © 2019 LalmayaChhantyal. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface detailViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *detailLabel;
@property(strong,nonatomic) id detailItem;
@end

NS_ASSUME_NONNULL_END
