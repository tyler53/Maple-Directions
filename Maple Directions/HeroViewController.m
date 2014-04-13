//
//  HeroViewController.m
//  Maple Directions
//
//  Created by Tyler Reynolds on 1/9/13.
//  Copyright (c) 2013 Splitcell Studios. All rights reserved.
//

#import "HeroViewController.h"

@implementation HeroViewController
@synthesize cygnusScroll, dawnButton, blazeButton, windButton, nightButton, homeButton;
@synthesize titleLabel, dawnLabel, blazeLabel, windLabel, nightLabel;

-(void)viewDidLoad{
    [super viewDidLoad];
    cygnusScroll.delegate = self;
    
    cygnusScroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0,0,320,480)];
    cygnusScroll.showsVerticalScrollIndicator=YES;
    cygnusScroll.scrollEnabled=YES;
    cygnusScroll.bounces = YES;
    cygnusScroll.userInteractionEnabled=YES;
    [self.view addSubview:cygnusScroll];
    [self.view insertSubview:cygnusScroll atIndex:1];
    cygnusScroll.contentSize = CGSizeMake(320,1000);
    [self.view addSubview:homeButton];
    [self.view insertSubview:homeButton atIndex:2];
    
    dawnLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    dawnLabel.text = @"Aran";
    dawnLabel.center = CGPointMake(230, 218);
    dawnLabel.textAlignment = NSTextAlignmentCenter;
    [dawnLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    dawnLabel.numberOfLines = 1;
    dawnLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [dawnLabel sizeToFit];
    dawnLabel.textColor= [UIColor whiteColor];
    [cygnusScroll addSubview:dawnLabel];
    [cygnusScroll insertSubview:dawnLabel atIndex:-1];
    
    blazeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    blazeLabel.text = @"Evan";
    blazeLabel.center = CGPointMake(230, 445);
    blazeLabel.textAlignment = NSTextAlignmentCenter;
    [blazeLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    blazeLabel.numberOfLines = 1;
    blazeLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [blazeLabel sizeToFit];
    blazeLabel.textColor= [UIColor redColor];
    [cygnusScroll addSubview:blazeLabel];
    [cygnusScroll insertSubview:blazeLabel atIndex:-1];
    
    windLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    windLabel.text = @"Mercedes";
    windLabel.center = CGPointMake(205, 658);
    windLabel.textAlignment = NSTextAlignmentCenter;
    [windLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    windLabel.numberOfLines = 1;
    windLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [windLabel sizeToFit];
    windLabel.textColor= [UIColor greenColor];
    [cygnusScroll addSubview:windLabel];
    [cygnusScroll insertSubview:windLabel atIndex:-1];
    
    nightLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    nightLabel.text = @"Phantom";
    nightLabel.center = CGPointMake(205, 881);
    nightLabel.textAlignment = NSTextAlignmentCenter;
    [nightLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    nightLabel.numberOfLines = 1;
    nightLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [nightLabel sizeToFit];
    nightLabel.textColor= [UIColor yellowColor];
    [cygnusScroll addSubview:nightLabel];
    [cygnusScroll insertSubview:nightLabel atIndex:-1];
    
    dawnButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [dawnButton addTarget:self action:@selector(dawnPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    dawnButton.frame = CGRectMake(160.0, 112.0, 150.0, 180.0);
    dawnButton.center = CGPointMake(160, 112);
    [dawnButton setBackgroundImage:[UIImage imageNamed:@"Aran.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:dawnButton];
    [cygnusScroll insertSubview:dawnButton atIndex:-2];
    
    blazeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [blazeButton addTarget:self action:@selector(blazePressed:)
          forControlEvents:UIControlEventTouchUpInside];
    blazeButton.frame = CGRectMake(160.0, 348.0, 150.0, 180.0);
    blazeButton.center = CGPointMake(160, 348);
    [blazeButton setBackgroundImage:[UIImage imageNamed:@"Evan.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:blazeButton];
    [cygnusScroll insertSubview:blazeButton atIndex:-3];
    
    windButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [windButton addTarget:self action:@selector(windPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    windButton.frame = CGRectMake(160.0, 112.0, 150.0, 144.0);
    windButton.center = CGPointMake(160, 565);
    [windButton setBackgroundImage:[UIImage imageNamed:@"Mercedes.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:windButton];
    [cygnusScroll insertSubview:windButton atIndex:-4];
    
    nightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nightButton addTarget:self action:@selector(nightPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    nightButton.frame = CGRectMake(160.0, 112.0, 150.0, 138.0);
    nightButton.center = CGPointMake(160, 783);
    [nightButton setBackgroundImage:[UIImage imageNamed:@"Phantom.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:nightButton];
    [cygnusScroll insertSubview:nightButton atIndex:-5];
}

- (void)dawnPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Aran"
                          message:@"Arans are warrior type characters that use large and slow polearms to do large amounts of damage. Arans are a bit harder to play than an Explorer or Cygnus Night, because you have to learn how to use the combos correctly and you really need to know your character.  Arans rely on Strength to put power behind their deadly polearms.  Chief stat: STR"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)blazePressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Evan"
                          message:@"The Evan is a slightly different character to play.  The Evan made a soul pact with an Onyx dragon, who accompanies you throughout your travels.  Instead of the typical job advancements with multiple skills in each one, the Evan has many smaller job advancements that have two skills each.  An Evan relies on INT to deal great amounts of damage through his/her dragon.  Chief stat: INT"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)windPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Mercedes"
                          message:@"The Mercedes is a bowman type character that dual wields bow guns.  This elven creature has excellent movement skills and can chain attacks to become even more powerful.  A Mercedes relies mostly on DEX to deal high damage with dual bowguns.  Chief stat: DEX"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)nightPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Phantom"
                          message:@"The Phantom is a thief type character that has mastered the stealthy skills of cards.  Phantoms use various ninja like skills to deal high amounts of damage.  They rely on LUK more than any other stat.  Chief stat: LUK"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

@end
