//
//  HeroViewController.h
//  Maple Directions
//
//  Created by Tyler Reynolds on 1/9/13.
//  Copyright (c) 2013 Splitcell Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeroViewController : UIViewController <UIScrollViewDelegate>{
    UIScrollView *cygnusScroll;
    
    IBOutlet UIButton *homeButton;
    UIButton *dawnButton;
    UIButton *blazeButton;
    UIButton *windButton;
    UIButton *nightButton;
    
    UILabel *titleLabel;
    UILabel *dawnLabel;
    UILabel *blazeLabel;
    UILabel *windLabel;
    UILabel *nightLabel;
}
@property (nonatomic, retain) UIScrollView *cygnusScroll;

@property (nonatomic, retain) IBOutlet UIButton *homeButton;
@property (nonatomic, retain) UIButton *dawnButton;
@property (nonatomic, retain) UIButton *blazeButton;
@property (nonatomic, retain) UIButton *windButton;
@property (nonatomic, retain) UIButton *nightButton;

@property (nonatomic, retain) UILabel *titleLabel;
@property (nonatomic, retain) UILabel *dawnLabel;
@property (nonatomic, retain) UILabel *blazeLabel;
@property (nonatomic, retain) UILabel *windLabel;
@property (nonatomic, retain) UILabel *nightLabel;

@end
