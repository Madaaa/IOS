//
//  ConcertController.m
//  iConcert
//
//  Created by LaboratoriOS Cronian Academy on 04/03/15.
//  Copyright (c) 2015 Lab1. All rights reserved.
//

#import "ConcertController.h"
#import "ConcertPageController.h"

@interface ConcertController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView *concertsTableView;
@property NSArray *concertsArray;
@end

@implementation ConcertController

- (void)viewDidLoad {
    [super viewDidLoad];
    _concertsTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _concertsTableView.dataSource = self;
    _concertsTableView.delegate = self;
    [self.view addSubview:_concertsTableView];
    
    _concertsArray = [[NSArray alloc] initWithObjects:@"One Republic",@"The XX",@"Salam",nil];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_concertsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *myCell = [UITableViewCell new];
    myCell.textLabel.text = _concertsArray[indexPath.row];
    return myCell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ConcertPageController *concertPageController = [[ConcertPageController alloc] initWithDetailConcert:_concertsArray[indexPath.row]];
    [self.navigationController pushViewController:concertPageController animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
