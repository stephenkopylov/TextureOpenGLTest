//
//  ASPageViewController.m
//  TextureOpenGLTest
//
//  Created by Stepan Kopylov on 21/04/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "ASPageViewController.h"
#import "OpenGLViewController.h"

@interface ASPageViewController () <ASPagerDelegate, ASPagerDataSource>

@property (nonatomic) ASPagerNode *pagerNode;

@end

@implementation ASPageViewController

- (instancetype)init
{
    _pagerNode = [ASPagerNode new];
    
    self = [super initWithNode:_pagerNode];
    
    if ( self ) {
        _pagerNode.delegate = self;
        _pagerNode.dataSource = self;
    }
    
    return self;
}


#pragma mark - ASPagerDelegate/ASPagerDataSource

- (NSInteger)numberOfPagesInPagerNode:(ASPagerNode *)pagerNode
{
    return 4;
}


- (ASCellNodeBlock)pagerNode:(ASPagerNode *)pagerNode nodeBlockAtIndex:(NSInteger)index
{
    return ^{
        ASCellNode *cellNode = [[ASCellNode alloc] initWithViewControllerBlock:^UIViewController *_Nonnull {
            return [OpenGLViewController new];
        } didLoadBlock:nil];
        return cellNode;
    };
}


- (ASSizeRange)pagerNode:(ASPagerNode *)pagerNode constrainedSizeForNodeAtIndexPath:(NSIndexPath *)indexPath
{
    return ASSizeRangeMake(pagerNode.frame.size);
}


@end
