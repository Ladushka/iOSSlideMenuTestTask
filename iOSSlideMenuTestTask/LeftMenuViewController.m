//
//  LeftMenuViewController.m
//  iOSSlideMenuTestTask
//
//  Created by Admin on 14.07.16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "LeftMenuViewController.h"


@interface LeftMenuViewController ()

@end

@implementation LeftMenuViewController{
    NSArray *_maps;
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self.slideOutAnimationEnabled = YES;
    
    return [super initWithCoder:aDecoder];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
     _maps=@[@"home",@"satellite",@"sheme",@"hybrid"];
    
    self.tableView.separatorColor = [UIColor lightGrayColor];
    
    UIImageView *_imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"leftMenu.jpg"]];
    self.tableView.backgroundView = _imageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_maps count];
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 20)];
    view.backgroundColor = [UIColor clearColor];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier=[_maps objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"satellite"]||
        [segue.identifier isEqualToString:@"sheme"]||
        [segue.identifier isEqualToString:@"hybrid"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        MapViewController *destViewController = segue.destinationViewController;
        destViewController.mapName = [_maps objectAtIndex:indexPath.row];
        
    }
}

@end
