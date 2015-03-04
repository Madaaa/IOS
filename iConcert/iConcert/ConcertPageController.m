//
//  ConcertPageController.m
//  iConcert
//
//  Created by LaboratoriOS Cronian Academy on 04/03/15.
//  Copyright (c) 2015 Lab1. All rights reserved.
//

#import "ConcertPageController.h"

@interface ConcertPageController ()

@end

@implementation ConcertPageController

- (instancetype)initWithDetailConcert:(NSString *)detailConcertName
{
    if(self = [super init])
    {
//        _detailConcertName = detailConcertName;
        self.title = detailConcertName;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
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

@end
