//
//  RootViewController.m
//  GPUImageDemo
//
//  Created by 恒 on 2017/12/12.
//  Copyright © 2017年 恒. All rights reserved.
//

#import "RootViewController.h"
#import "Basic1VC.h"
#import "Basic2VC.h"
#import "Basic3VC.h"
#import "Basic4VC.h"

@interface RootViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,copy)NSArray *dataArr;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"LearnOpenGLES";
        

    UITableView *tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    

    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    if (cell==nil) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = self.dataArr[indexPath.row];
    return  cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        Basic1VC *vc=[Basic1VC new];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if (indexPath.row==1){
        Basic2VC *vc=[Basic2VC new];
        [self.navigationController pushViewController:vc animated:YES];
    }
//    else if (indexPath.row==2){
//        BeautifyVC *vc=[BeautifyVC new];
//    [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==3){
//        FuzzyPictureVC *vc=[FuzzyPictureVC new];
//       [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==4){
//        FilterVideo *vc=[FilterVideo new];
//         [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==5){
//        WatermarkVideoVC *vc=[WatermarkVideoVC new];
//    [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==6){
//        WatermarkTextPictureVC *vc=[WatermarkTextPictureVC new];
//     [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==7){
//        VideoMergeVC *vc=[VideoMergeVC new];
//       [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==8){
//        PictureInOutVC *vc=[PictureInOutVC new];
//        [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==9){
//        GPUImageInstructVC *vc=[GPUImageInstructVC new];
//        [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==10){
////        FaceRecognitionVC *vc=[FaceRecognitionVC new];
////        [self presentViewController:vc animated:YES completion:nil];
//    }
//    else if (indexPath.row==11){
//        SobelCheckVC *vc=[SobelCheckVC new];
//        [self presentViewController:vc animated:YES completion:nil];
//    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 66;
}
-(NSArray *)dataArr{
    if (!_dataArr) {
        _dataArr = @[@"iOS开发-OpenGL ES入门教程1",@"iOS开发-OpenGL ES入门教程2",@"iOS开发-OpenGL ES入门教程3",@"iOS开发-OpenGL ES入门教程4",@"iOS开发-OpenGLES进阶教程",@"iOS开发-OpenGLES进阶教程3",@"iOS开发-OpenGLES进阶教程4",@"OpenGL ES不容错过的实战-碰碰车",@"基于视锥体（平截体）的OpenGL ES性能优化",@"OpenGLES进阶教程7-天空盒效果",@"iOS开发-OpenGL ES实践教程（一）",@"OpenGLES进阶教程8-obj文件和mtl文件解析"];
    }
    return _dataArr;
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
