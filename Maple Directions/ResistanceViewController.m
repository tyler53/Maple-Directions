//
//  ResistanceViewController.m
//  Maple Directions
//
//  Created by Tyler Reynolds on 1/9/13.
//  Copyright (c) 2013 Splitcell Studios. All rights reserved.
//

#import "ResistanceViewController.h"

@implementation ResistanceViewController
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
    cygnusScroll.contentSize = CGSizeMake(320,1050);
    [self.view addSubview:homeButton];
    [self.view insertSubview:homeButton atIndex:2];
    
    dawnLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    dawnLabel.text = @"Demon Slayer";
    dawnLabel.center = CGPointMake(190, 218);
    dawnLabel.textAlignment = NSTextAlignmentCenter;
    [dawnLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    dawnLabel.numberOfLines = 1;
    dawnLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [dawnLabel sizeToFit];
    dawnLabel.textColor= [UIColor whiteColor];
    [cygnusScroll addSubview:dawnLabel];
    [cygnusScroll insertSubview:dawnLabel atIndex:-1];
    
    blazeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    blazeLabel.text = @"Battle Mage";
    blazeLabel.center = CGPointMake(190, 445);
    blazeLabel.textAlignment = NSTextAlignmentCenter;
    [blazeLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    blazeLabel.numberOfLines = 1;
    blazeLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [blazeLabel sizeToFit];
    blazeLabel.textColor= [UIColor redColor];
    [cygnusScroll addSubview:blazeLabel];
    [cygnusScroll insertSubview:blazeLabel atIndex:-1];
    
    windLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    windLabel.text = @"Wild Hunter";
    windLabel.center = CGPointMake(195, 705);
    windLabel.textAlignment = NSTextAlignmentCenter;
    [windLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    windLabel.numberOfLines = 1;
    windLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [windLabel sizeToFit];
    windLabel.textColor= [UIColor greenColor];
    [cygnusScroll addSubview:windLabel];
    [cygnusScroll insertSubview:windLabel atIndex:-1];
    
    nightLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    nightLabel.text = @"Mechanic";
    nightLabel.center = CGPointMake(205, 950);
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
    dawnButton.frame = CGRectMake(160.0, 112.0, 150.0, 111.0);
    dawnButton.center = CGPointMake(160, 112);
    [dawnButton setBackgroundImage:[UIImage imageNamed:@"Demon Slayer.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:dawnButton];
    [cygnusScroll insertSubview:dawnButton atIndex:-2];
    
    blazeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [blazeButton addTarget:self action:@selector(blazePressed:)
          forControlEvents:UIControlEventTouchUpInside];
    blazeButton.frame = CGRectMake(160.0, 348.0, 150.0, 174.0);
    blazeButton.center = CGPointMake(160, 348);
    [blazeButton setBackgroundImage:[UIImage imageNamed:@"Battle Mage.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:blazeButton];
    [cygnusScroll insertSubview:blazeButton atIndex:-3];
    
    windButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [windButton addTarget:self action:@selector(windPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    windButton.frame = CGRectMake(160.0, 112.0, 150.0, 237.0);
    windButton.center = CGPointMake(160, 575);
    [windButton setBackgroundImage:[UIImage imageNamed:@"Wild Hunter.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:windButton];
    [cygnusScroll insertSubview:windButton atIndex:-4];
    
    nightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nightButton addTarget:self action:@selector(nightPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    nightButton.frame = CGRectMake(160.0, 112.0, 150.0, 207.0);
    nightButton.center = CGPointMake(160, 823);
    [nightButton setBackgroundImage:[UIImage imageNamed:@"Mechanic.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:nightButton];
    [cygnusScroll insertSubview:nightButton atIndex:-5];
    
}

- (void)dawnPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Demon Slayer"
                          message:@"The Demon Slayer is essentially a dark warrior.  The Demon Slayer utilizes unique battle tactics and powerful skills worthy of a demon Warrior. Instead of using MP, the Demon Slayer uses Demon Fury, which can be charged through attacking enemies to fuel powerful attack skills.  A Demon Slayer’s main stat is Strength, just like any warrior.  Chief stat: STR"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)blazePressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Battle Mage"
                          message:@"Unlike other Magician classes, the Battle Mage specializes in fast, close-range combat with attack chains that overpower foes and drive them back.  The Battle Mage relies on INT, just like any other mage class, to deal high magic damage.  Chief stat: INT"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)windPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Wild Hunter"
                          message:@"The Wild Hunter fires a volley of arrows from the back of a tamed Jaguar to overpower foes with relentless attacks.  The Wild Hunter is skilled in both close-range and long-range combat. The Wild Hunter has all the characteristics of a Bowman - quick movements, wide attack range, moving attacks - and then some! Wild Hunters rely on DEX, just like any bowman, to do high ranged damage.  Chief stat: DEX"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)nightPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Mechanic"
                          message:@"Commanding an arsenal of high-tech weaponry, Mechanics are ready to wage a high-tech war against agents of the Black Mage.  As you would guess from the class name, the Mechanic uses skills while piloting a deadly mech. You can move up and down through terrain quickly and even allow your party members to move freely within the map by using a special skill. Mechanics rely on DEX to deal high amounts of damage.  Chief stat: DEX"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

@end
