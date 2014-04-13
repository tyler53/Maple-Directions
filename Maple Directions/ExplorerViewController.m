//
//  ExplorerViewController.m
//  Maple Directions
//
//  Created by Tyler Reynolds on 1/8/13.
//  Copyright (c) 2013 Splitcell Studios. All rights reserved.
//

#import "ExplorerViewController.h"

@implementation ExplorerViewController
@synthesize cygnusScroll, dawnButton, blazeButton, windButton, nightButton, thunderButton, homeButton;
@synthesize titleLabel, dawnLabel, blazeLabel, windLabel, nightLabel, thunderLabel;

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
    cygnusScroll.contentSize = CGSizeMake(320,1233);
    [self.view addSubview:homeButton];
    [self.view insertSubview:homeButton atIndex:2];
    
    dawnLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    dawnLabel.text = @"Warrior";
    dawnLabel.center = CGPointMake(210, 218);
    dawnLabel.textAlignment = NSTextAlignmentCenter;
    [dawnLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    dawnLabel.numberOfLines = 1;
    dawnLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [dawnLabel sizeToFit];
    dawnLabel.textColor= [UIColor whiteColor];
    [cygnusScroll addSubview:dawnLabel];
    [cygnusScroll insertSubview:dawnLabel atIndex:-1];
    
    blazeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    blazeLabel.text = @"Magician";
    blazeLabel.center = CGPointMake(210, 445);
    blazeLabel.textAlignment = NSTextAlignmentCenter;
    [blazeLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    blazeLabel.numberOfLines = 1;
    blazeLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [blazeLabel sizeToFit];
    blazeLabel.textColor= [UIColor redColor];
    [cygnusScroll addSubview:blazeLabel];
    [cygnusScroll insertSubview:blazeLabel atIndex:-1];
    
    windLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    windLabel.text = @"Bowman";
    windLabel.center = CGPointMake(210, 658);
    windLabel.textAlignment = NSTextAlignmentCenter;
    [windLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    windLabel.numberOfLines = 1;
    windLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [windLabel sizeToFit];
    windLabel.textColor= [UIColor greenColor];
    [cygnusScroll addSubview:windLabel];
    [cygnusScroll insertSubview:windLabel atIndex:-1];
    
    nightLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    nightLabel.text = @"Thief";
    nightLabel.center = CGPointMake(220, 881);
    nightLabel.textAlignment = NSTextAlignmentCenter;
    [nightLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    nightLabel.numberOfLines = 1;
    nightLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [nightLabel sizeToFit];
    nightLabel.textColor= [UIColor yellowColor];
    [cygnusScroll addSubview:nightLabel];
    [cygnusScroll insertSubview:nightLabel atIndex:-1];
    
    thunderLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 217, 32)];
    thunderLabel.text = @"Pirate";
    thunderLabel.center = CGPointMake(220, 1096);
    thunderLabel.textAlignment = NSTextAlignmentCenter;
    [thunderLabel setFont:[UIFont fontWithName:@"GurmukhiMN" size:27]];
    thunderLabel.numberOfLines = 1;
    thunderLabel.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.0];
    [thunderLabel sizeToFit];
    thunderLabel.textColor= [UIColor blueColor];
    [cygnusScroll addSubview:thunderLabel];
    [cygnusScroll insertSubview:thunderLabel atIndex:-1];
    
    dawnButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [dawnButton addTarget:self action:@selector(dawnPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    dawnButton.frame = CGRectMake(160.0, 112.0, 150.0, 188.0);
    dawnButton.center = CGPointMake(160, 112);
    [dawnButton setBackgroundImage:[UIImage imageNamed:@"Warrior.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:dawnButton];
    [cygnusScroll insertSubview:dawnButton atIndex:-2];
    
    blazeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [blazeButton addTarget:self action:@selector(blazePressed:)
          forControlEvents:UIControlEventTouchUpInside];
    blazeButton.frame = CGRectMake(160.0, 348.0, 150.0, 169.0);
    blazeButton.center = CGPointMake(160, 348);
    [blazeButton setBackgroundImage:[UIImage imageNamed:@"Magician.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:blazeButton];
    [cygnusScroll insertSubview:blazeButton atIndex:-3];
    
    windButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [windButton addTarget:self action:@selector(windPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    windButton.frame = CGRectMake(160.0, 112.0, 150.0, 170.0);
    windButton.center = CGPointMake(160, 565);
    [windButton setBackgroundImage:[UIImage imageNamed:@"Bowman.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:windButton];
    [cygnusScroll insertSubview:windButton atIndex:-4];
    
    nightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nightButton addTarget:self action:@selector(nightPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    nightButton.frame = CGRectMake(160.0, 112.0, 150.0, 170.0);
    nightButton.center = CGPointMake(160, 783);
    [nightButton setBackgroundImage:[UIImage imageNamed:@"Thief.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:nightButton];
    [cygnusScroll insertSubview:nightButton atIndex:-5];
    
    thunderButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [thunderButton addTarget:self action:@selector(thunderPressed:)
            forControlEvents:UIControlEventTouchUpInside];
    thunderButton.frame = CGRectMake(160.0, 112.0, 150.0, 172.0);
    thunderButton.center = CGPointMake(160, 1001);
    [thunderButton setBackgroundImage:[UIImage imageNamed:@"Pirate.png"] forState: UIControlStateNormal];
    [cygnusScroll addSubview:thunderButton];
    [cygnusScroll insertSubview:thunderButton atIndex:-6];
}

- (void)dawnPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Warrior"
                          message:@"Warriors are experienced swordsmen who call on their skills in close range combat to survive.  They have high HP and Strength.  To become a Warrior, you must reach level ten, and then speak to Dances with Balrog (located in Perion), who trains you as a warrior.  Chief stat: STR"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)blazePressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Magician"
                          message:@"Magicians are talented spellcasters who call on their skills in conjuring the elements to survive.  They have high MP and INT.  To become a Magician, you must reach level eight, and then speak to Grendel the Really Old (located in Ellinia), who trains you as a Magician. Chief stat: INTcated on the island of Ereve), who directs you to your trainer. Chief stat: INT"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)windPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Bowman"
                          message:@"Bowman are experienced archers who call on the power of the bow and arrow to survive.  They have high DEX.  To become a Bowman, you must reach level ten, and then speak to Athena Pierce (located in Hennesey’s), who trains you as a Bowman. Chief Stat: DEX"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)nightPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Thief"
                          message:@"Thieves are experienced ninjas who call on their skills in stealth and deadly finishing moves to survive.  They have high LUK.  To become a Thief, you must reach level ten, and then speak to The Dark Lord (located in Kerning City), who trains you as a Thief. Chief Stat: LUK"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)thunderPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Pirate"
                          message:@"Pirates are scurvy sailors who call on their skills in buccaneering to survive.  They have high Strength.  To become a Pirate, you must reach level ten, and then speak to Kyrin (Located in Nautilus), who trains you as a Pirate.  Chief stat: STR"
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: nil];
    [alert show];
}
@end

