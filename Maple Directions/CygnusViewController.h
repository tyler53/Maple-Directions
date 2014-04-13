//
//  CygnusViewController.h
//  Maple Directions
//
//  Created by Tyler Reynolds on 12/19/12.
//  Copyright (c) 2012 Splitcell Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CygnusViewController : UIViewController <UIScrollViewDelegate>{
    UIScrollView *cygnusScroll;
    
    IBOutlet UIButton *homeButton;
    UIButton *dawnButton;
    UIButton *blazeButton;
    UIButton *windButton;
    UIButton *nightButton;
    UIButton *thunderButton;
    
    UILabel *titleLabel;
    UILabel *dawnLabel;
    UILabel *blazeLabel;
    UILabel *windLabel;
    UILabel *nightLabel;
    UILabel *thunderLabel;
}
@property (nonatomic, retain) UIScrollView *cygnusScroll;

@property (nonatomic, retain) IBOutlet UIButton *homeButton;
@property (nonatomic, retain) UIButton *dawnButton;
@property (nonatomic, retain) UIButton *blazeButton;
@property (nonatomic, retain) UIButton *windButton;
@property (nonatomic, retain) UIButton *nightButton;
@property (nonatomic, retain) UIButton *thunderButton;

@property (nonatomic, retain) UILabel *titleLabel;
@property (nonatomic, retain) UILabel *dawnLabel;
@property (nonatomic, retain) UILabel *blazeLabel;
@property (nonatomic, retain) UILabel *windLabel;
@property (nonatomic, retain) UILabel *nightLabel;
@property (nonatomic, retain) UILabel *thunderLabel;

@end
