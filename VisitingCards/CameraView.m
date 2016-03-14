//
//  CameraView.m
//  VisitingCards
//
//  Created by Serg on 3/4/16.
//  Copyright (c) 2016 Vitaliy Horodecky. All rights reserved.
//

#import "CameraView.h"

@implementation CameraView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibNameOrNil];
    
    if (self != nil) {
        self.title = @"Camera";
        self.tabBarItem.image = [UIImage imageNamed:@"Camera-50.png"];

        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

@end
