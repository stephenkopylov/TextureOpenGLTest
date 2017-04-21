//
//  OpenGLViewController.m
//  TextureOpenGLTest
//
//  Created by Stepan Kopylov on 21/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "OpenGLViewController.h"
#import <GLKit/GLKit.h>
#define ARC4RANDOM_MAX 0x100000000

@interface OpenGLViewController ()<GLKViewDelegate>

@property (nonatomic) ASDisplayNode *glNode;
@property (nonatomic) GLKView *glView;

@end

@implementation OpenGLViewController {
    double _randRed;
    double _randGreen;
    double _randBlue;
}

- (instancetype)init
{
    _glView = [GLKView new];
    
    self = [super initWithNode:[[ASDisplayNode alloc] initWithViewBlock:^UIView *_Nonnull {
        return _glView; //f*ck retain cycles!
    }]];
    
    if ( self ) {
    }
    
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _glView.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    _glView.delegate = self;
    
    _randRed = ((double)arc4random() / ARC4RANDOM_MAX);
    _randGreen = ((double)arc4random() / ARC4RANDOM_MAX);
    _randBlue = ((double)arc4random() / ARC4RANDOM_MAX);
}


- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    glClearColor(_randRed, _randGreen, _randBlue, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
}


@end
