//
//  DirectionsViewController.h
//  Maple Directions
//
//  Created by Tyler Reynolds on 1/8/13.
//  Copyright (c) 2013 Splitcell Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DirectionsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    
}
@property (nonatomic, retain) NSArray *cellIconNames;
@property (nonatomic, retain) NSArray *cellIconImages;
@property (nonatomic, retain) NSArray *cellButtons;


@property (nonatomic, retain) NSArray *descArray;
@property (nonatomic, retain) NSArray *videoArray;
@property (weak, nonatomic) IBOutlet UITableView *carrierTableView;
@end
