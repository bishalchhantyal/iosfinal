//
//  ListViewController.h
//  myShoppingList
//
//  Created by LalmayaChhantyal on 29/5/19.
//  Copyright © 2019 LalmayaChhantyal. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
@property(copy, nonatomic) NSArray *itemslist;









@end

NS_ASSUME_NONNULL_END
