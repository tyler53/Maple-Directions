//
//  DirectionsViewController.m
//  Maple Directions
//
//  Created by Tyler Reynolds on 1/8/13.
//  Copyright (c) 2013 Splitcell Studios. All rights reserved.
//

#import "DirectionsViewController.h"
#import "CustomCell.h"

@interface DirectionsViewController ()

@end

@implementation DirectionsViewController
@synthesize cellIconNames, cellIconImages, cellButtons, descArray, videoArray;
@synthesize carrierTableView;
NSString *cellIconName;
NSString *urlString;
- (void)viewDidLoad
{
    [super viewDidLoad];
    if (self) {
        self.carrierTableView.delegate = self;
        self.carrierTableView.dataSource = self;
        
        cellIconNames = [[NSArray alloc] initWithObjects:@"Ariant\n(Nihal Desert)", @"Edelstein", @"Ellinia\n(Victoria Island)", @"Ereve", @"Henesys\n(Victoria Island)", @"Kerning City\n(Victoria Island)", @"Leafre\n(Minar Forest)", @"Lith Harbor\n(Victoria Island)", @"Ludibrium\n(Ludus Lake)", @"Mu Lung Garden", @"Nautilus\n(Victoria Island)", @"Orbis", @"Perion\n(Victoria Island)",  @"Rien", nil];
        
        descArray = [[NSArray alloc] initWithObjects:@"1. Start in Orbis Station Entrance\n2. Talk to Isa the Station Guide\n3. Pay for trip to Ariant", @"1. Start in Six Path Crossway\n2. Climb up middle rope all the way\n3. Go to the top portal\n4. Talk to Ace and buy a trip to Edelstein", @"1. Start in Six Path Crossway\n2. Go to the middle right Portal\n3. Go up 2 maps to the top portal", @"1. Start in Six Path Crossway\n2. Climb up middle rope all the way\n3. Go to the middle portal\n4. Talk to Kiriru and buy a trip to Ereve", @"1. Start in Six Path Crossway\n2. Go to the bottom left Portal\n3. Go down 1 map\n4. Use the bottom right portal", @"1. Start in Six Path Crossway\n2. Go to the top left Portal\n3. Go left 2 maps", @"1. Start in Orbis Station Entrance\n2. Talk to Isa the Station Guide\n3. Pay for trip to Leafre", @"1. Start in Six Path Crossway\n2. Go to the middle left Portal\n3. Go left 3 portals", @"1. Start in Orbis Station Entrance\n2. Talk to Isa the Station Guide\n3. Pay for trip to Ludibrium", @"1. Start in Orbis Station Entrance\n2. Talk to Isa the Station Guide\n3. Pay for trip to Mu Lung Garden", @"1. Start in Six Path Crossway\n2. Go to the bottom right Portal\n3. Go right for 2 maps", @"1. Start in Six Path Crossway\n2. Climb up middle rope all the way\n3. Go to the middle portal\n4. Talk to Kiriru and buy a trip to Ereve\n5. Talk to Kiru to buy a trip to Orbis", @"1. Start in Six Path Crossway\n2. Go to the top right Portal\n3. Go right for 2 maps", @"1. Start in Lith Harbor\n2. Talk to Puro (Bottom right of the city) to buy a trip to Rien", nil];
        
        videoArray = [[NSArray alloc] initWithObjects:@"http://youtu.be/3OJxVW3kVsg?t=3m22s", @"http://youtu.be/N-Ki_Kn6ZGM", @"http://youtu.be/5oDFCLvaeWI", @"http://youtu.be/zf2aUhmYf9s", @"http://youtu.be/m2LPrfCz6HI", @"http://youtu.be/wcLzGSfmOjc", @"http://youtu.be/3OJxVW3kVsg?t=3m22s", @"http://youtu.be/ZYCRGYqLYUE", @"http://youtu.be/3OJxVW3kVsg?t=3m22s", @"http://youtu.be/3OJxVW3kVsg?t=3m22s", @"http://youtu.be/Gx8NrbM_WvM", @"http://youtu.be/3OJxVW3kVsg", @"http://youtu.be/o6Ejf467z_0", @"http://youtu.be/2bwQqAz9FYg", nil];
        
        cellIconImages = [[NSArray alloc] initWithObjects:@"ariant.jpeg", @"edelstein.jpeg", @"ellinia.jpeg", @"ereve.jpeg", @"Henesys.jpeg", @"Kerning.png", @"Leafre.jpeg", @"Lith Harbor.jpeg", @"Ludibrium.jpeg", @"mulung.jpeg", @"Nautilus.jpeg", @"orbis.png", @"perion.jpeg", @"Rien.png", nil];
        
    }
}
//tableview datasource delegate methods
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return cellIconNames.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    
    cellIconName = [cellIconNames objectAtIndex:indexPath.row];
    
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    
    if(cell == nil){
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.rightLabel.text = [cellIconNames objectAtIndex:indexPath.row];
    cell.carrierImage.image = [UIImage imageNamed:[cellIconImages objectAtIndex:indexPath.row]];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;{
    
    urlString = [videoArray objectAtIndex:indexPath.row];
    NSString *descString = [descArray objectAtIndex:indexPath.row];
    NSString *nameString = [cellIconNames objectAtIndex:indexPath.row];
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:nameString
                          message:descString
                          delegate:self
                          cancelButtonTitle:@"Cool!"
                          otherButtonTitles: @"Watch Video", nil];
    [alert show];
    
}
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: urlString]];
    }
    
}

- (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation{
    
    NSIndexPath *newCellPath = [NSIndexPath indexPathForRow:cellIconNames.count
                                                  inSection:0];
    
    [self.carrierTableView insertRowsAtIndexPaths:@[newCellPath]
                                 withRowAnimation:UITableViewRowAnimationFade];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

