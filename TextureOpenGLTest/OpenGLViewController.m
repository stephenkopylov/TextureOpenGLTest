//
//  OpenGLViewController.m
//  TextureOpenGLTest
//
//  Created by Stepan Kopylov on 21/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "OpenGLViewController.h"
#define ARC4RANDOM_MAX 0x100000000

@implementation OpenGLViewController {
    double _randRed;
    double _randGreen;
    double _randBlue;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    GLKView *view = (GLKView *)self.view;
    view.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    _randRed = ((double)arc4random() / ARC4RANDOM_MAX);
    _randGreen = ((double)arc4random() / ARC4RANDOM_MAX);
    _randBlue = ((double)arc4random() / ARC4RANDOM_MAX);
    
    self.preferredFramesPerSecond = 60;
}


- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    glClearColor(_randRed, _randGreen, _randBlue, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
}


@end
