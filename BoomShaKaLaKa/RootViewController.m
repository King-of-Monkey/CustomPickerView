//
//  RootViewController.m
//  BoomShaKaLaKa
//
//  Created by wky on 16/1/27.
//  Copyright © 2016年 111. All rights reserved.
//

#import "RootViewController.h"
#import "GWLCustomPikerView.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface RootViewController ()<GWLCustomPikerViewDelegate,GWLCustomPikerViewDataSource>

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GWLCustomPikerView *customPickerView = [[GWLCustomPikerView alloc]init];
    customPickerView.frame = CGRectMake(0, kScreenHeight - 250, kScreenWidth, 250);
    customPickerView.dataSource = self;
    customPickerView.delegate = self;
    [self.view addSubview:customPickerView];
}

- (NSInteger)numberOfComponentsInCustomPikerView:(GWLCustomPikerView *)customPickerView {

    return 2;
}

- (NSInteger)customPickerView:(GWLCustomPikerView *)customPickerView numberOfRowsInComponent:(NSInteger)component {

    return 10.0;
}

- (NSString *)customPickerView:(GWLCustomPikerView *)customPickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {

    return [NSString stringWithFormat:@"测试%zd - %zd",component, row];
}

- (void)customPikerViewCompleteSelect {

    NSLog(@"");
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
