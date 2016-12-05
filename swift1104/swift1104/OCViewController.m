//
//  OCViewController.m
//  swift1104
//
//  Created by Jorgon on 2016/12/2.
//  Copyright © 2016年 Jorgon. All rights reserved.
//

#import "OCViewController.h"
#import "swift1104-swift.h"

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  ViewController * vc = self.navigationController.viewControllers.firstObject;
  NSLog(@"%@",vc);
  float random1 = arc4random()%255;
  float random2 = arc4random()%255;
  float random3 = arc4random()%255;
  NSLog(@"%f",random1);
  vc.tableView.backgroundColor = [UIColor colorWithRed:random1/255.0
                                            green:random2/255.0
                                             blue:random3/255.0
                                            alpha:1];
  self.view.backgroundColor = [UIColor colorWithRed:random1/255.0
                                              green:random2/255.0
                                               blue:random3/255.0
                                              alpha:1];
  
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  [self.navigationController popViewControllerAnimated:YES];
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
