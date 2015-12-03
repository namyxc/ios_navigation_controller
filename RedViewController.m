//
//  RedViewController.m
//  NavigationControllerDemo
//
//  Created by rentit on 2015. 11. 10..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "RedViewController.h"
#import "YellowViewController.h"
#import "GreenViewController.h"

@implementation RedViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self =[super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];
    if (self){
        self.title = @"Piros";
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton* sargaButton = [UIButton new];
    sargaButton.backgroundColor = [UIColor yellowColor];
    [sargaButton setTitle:@"navigalj sargara" forState:UIControlStateNormal];
    [sargaButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [sargaButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    sargaButton.frame = CGRectMake(10, 80, 300, 50);
    
    [self.view addSubview:sargaButton];
    
    [sargaButton addTarget:self action:@selector(yellowButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    UIButton* zoldButton = [UIButton new];
    zoldButton.backgroundColor = [UIColor greenColor];
    [zoldButton setTitle:@"navigalj zoldre" forState:UIControlStateNormal];
    [zoldButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [zoldButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    zoldButton.frame = CGRectMake(10, 150, 300, 50);
    
    [self.view addSubview:zoldButton];
    
    [zoldButton addTarget:self action:@selector(greenButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

-(void)yellowButtonTapped {
    NSLog(@"sarga tapped");
    
    YellowViewController* sarga = [YellowViewController new];
    
    [self.navigationController pushViewController:sarga animated:YES];
}


-(void)greenButtonTapped {
    NSLog(@"zold tapped");
    
    GreenViewController* zold = [GreenViewController new];
    
    [self.navigationController  presentViewController:zold animated:YES completion:nil];
}

@end
