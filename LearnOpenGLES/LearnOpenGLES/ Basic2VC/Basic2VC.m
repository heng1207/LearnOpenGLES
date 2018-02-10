//
//  Basic2VC.m
//  LearnOpenGLES
//
//  Created by 恒 on 2017/12/29.
//  Copyright © 2017年 恒. All rights reserved.
//

#import "Basic2VC.h"
#import "LearnView.h"


@interface Basic2VC ()
@property (nonatomic , strong) LearnView*   myView;

@end

@implementation Basic2VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView = [[LearnView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview: self.myView];

    
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
