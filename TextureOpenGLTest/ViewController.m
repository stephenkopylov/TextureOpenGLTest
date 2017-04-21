//
//  ViewController.m
//  TextureOpenGLTest
//
//  Created by Stepan Kopylov on 21/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "ViewController.h"
#import "PageViewController.h"
#import "ASPageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
- (IBAction)pushClassic:(id)sender
{
    [self.navigationController pushViewController:[PageViewController new] animated:YES];
}


- (IBAction)pushASDK:(id)sender
{
    [self.navigationController pushViewController:[ASPageViewController new] animated:YES];
}


@end
