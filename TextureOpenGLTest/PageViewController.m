//
//  PageViewController.m
//  TextureOpenGLTest
//
//  Created by Stepan Kopylov on 21/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "PageViewController.h"
#import "OpenGLViewController.h"

@interface PageViewController ()<UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (nonatomic) NSArray *vcs;

@end

@implementation PageViewController

- (instancetype)init
{
    self = [super initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    if ( self ) {
        _vcs = @[
                 [OpenGLViewController new],
                 [OpenGLViewController new],
                 [OpenGLViewController new],
                 [OpenGLViewController new]
                 ];
        
        self.delegate = self;
        self.dataSource = self;
    }
    
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setViewControllers:@[_vcs[0]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
}


- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSInteger index = [_vcs indexOfObject:viewController];
    
    index++;
    
    if ( index < _vcs.count ) {
        return _vcs[index];
    }
    
    return nil;
}


- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSInteger index = [_vcs indexOfObject:viewController];
    
    index--;
    
    if ( index >= 0 ) {
        return _vcs[index];
    }
    
    return nil;
}


@end
