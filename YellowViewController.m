//
//  YellowViewController.m
//  NavigationControllerDemo
//
//  Created by rentit on 2015. 11. 10..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "YellowViewController.h"

@implementation YellowViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self =[super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];
    if (self){
        self.title = @"Sarga";
    }
    return self;
}


-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
}
@end
