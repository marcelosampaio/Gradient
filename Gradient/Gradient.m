//
//  Gradient.m
//  Gradient
//
//  Created by Marcelo Sampaio on 1/31/15.
//  Copyright (c) 2015 Marcelo Sampaio. All rights reserved.
//

#import "Gradient.h"

@implementation Gradient

+ (CAGradientLayer*) makeGradient {
    UIColor *colorOne = [UIColor colorWithRed:(255/255.0) green:(174/255.0) blue:(0/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(255/255.0)  green:(65/255.0)  blue:(0/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
}

@end
