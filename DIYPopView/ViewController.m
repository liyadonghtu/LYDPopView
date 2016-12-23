//
//  ViewController.m
//  DIYPopView
//
//  Created by 李亚东 on 2016/12/8.
//  Copyright © 2016年 李亚东. All rights reserved.
//

#import "ViewController.h"
#import "LYDPopMenu.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *abutton = [UIButton buttonWithType:UIButtonTypeCustom];
    abutton.frame = CGRectMake(0, 0, 30, 30);
    [abutton setImage:[UIImage imageNamed:@"add_button_image"] forState:UIControlStateNormal];
    [abutton addTarget:self action:@selector(handleRightItemAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.navigationController.view addSubview:abutton];
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithCustomView:abutton];
    self.navigationItem.rightBarButtonItem = barItem;
    
}


- (void)handleRightItemAction:(UIButton *)sender {
    NSArray *menuItems =
    @[
      
      [LYDMenuItem menuItem:@"发起群聊"
                     image:[UIImage imageNamed:@"people_chat_image"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [LYDMenuItem menuItem:@"添加朋友"
                     image:[UIImage imageNamed:@"add_friends_image"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [LYDMenuItem menuItem:@"扫一扫"
                     image:[UIImage imageNamed:@"start_sweep_image"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [LYDMenuItem menuItem:@"收付款"
                     image:[UIImage imageNamed:@"pay_money_image"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
           ];
    
    CGRect rect = CGRectMake(sender.frame.origin.x, sender.frame.origin.y, sender.frame.size.width, sender.frame.size.width + 20);
//    [LYDPopMenu setCornerRadious:6];
//    [LYDPopMenu setTintColor:[UIColor redColor]];
    [LYDPopMenu showMenuInView:self.view.window
                  fromRect:rect
                 menuItems:menuItems];

    
}




- (void) pushMenuItem:(id)sender
{
    NSLog(@"%@", sender);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
