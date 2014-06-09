//
//  MainTableViewController.m
//  IOSFormDemo
//
//  Created by Jair Rillo Junior on 6/8/14.
//  Copyright (c) 2014 Jair Rillo Junior. All rights reserved.
//

#import "MainTableViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:@"Dependentes" style:UIBarButtonItemStylePlain target:self action:@selector(nextAction)];
    self.navigationItem.rightBarButtonItem = next;
}

-(IBAction)nextAction {
    UITableViewController *dependentes = [self.storyboard instantiateViewControllerWithIdentifier:@"DependentesTableViewController"];
    [self.navigationController pushViewController:dependentes animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
