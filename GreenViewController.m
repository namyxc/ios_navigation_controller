//
//  GreenViewController.m
//  NavigationControllerDemo
//
//  Created by rentit on 2015. 11. 10..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "GreenViewController.h"

@implementation GreenViewController


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self =[super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];
    if (self){
        self.title = @"Zold";
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    
    
    
    UIButton* redButton = [UIButton new];
    redButton.backgroundColor = [UIColor redColor];
    [redButton setTitle:@"vissza" forState:UIControlStateNormal];
    [redButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [redButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    redButton.frame = CGRectMake(10, 80, 300, 50);
    
    [self.view addSubview:redButton];
    
    [redButton addTarget:self action:@selector(redButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}



-(void)redButtonTapped {
    NSLog(@"red tapped");
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
@end
