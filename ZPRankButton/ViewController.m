//
//  ViewController.m
//  ZPButtonRank


//  联系开发者 QQ     1397819210
//           Email  1397819210@qq.com


//  Created by 郑鹏 on 15/6/8.
//  Copyright (c) 2015年 pzheng. All rights reserved.
//
#import "RankButton.h"
#import "ViewController.h"
#define MYScreenWidth [UIScreen mainScreen].bounds.size.width
@interface ViewController ()
{
    RankButton *btn1;
    RankButton *btn3;
    RankButton *btn;
    RankButton *btn4;
    RankButton *norbtn;
}
@property (weak, nonatomic) IBOutlet UILabel *baseL;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    btn1= [RankButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(20, CGRectGetMaxY(_baseL.frame)+20, MYScreenWidth-40, 90);
    [btn1 setImage:[UIImage imageNamed:@"mall_leimu"] forState:UIControlStateNormal];
    btn1.layer.borderWidth = 0.5;
    //图文排列的类型
    btn1.type = buttonTypeNormal;
    //图文间的间距
    btn1.picTileRange = 10;
    //基于图片来计算边距
    btn1.alignType = buttonAlignWithPic;
    btn1.picToViewRange = 30;
    [btn1 setTitle:@"测试1" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    
    
    btn3= [RankButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(20 , CGRectGetMaxY(btn1.frame)+20, MYScreenWidth-40, 90);
    [btn3 setImage:[UIImage imageNamed:@"mall_leimu"] forState:UIControlStateNormal];
    btn3.layer.borderWidth = 0.5;
    btn3.picTileRange = 20;
    btn3.type = buttonTypePicRight;
    btn3.alignType = buttonAlignWithPic;
    btn3.picToViewRange = 10;
    [btn3 setTitle:@"测试" forState:UIControlStateNormal];
    [self.view addSubview:btn3];
    
    
    norbtn= [RankButton buttonWithType:UIButtonTypeCustom];
    norbtn.frame = CGRectMake(20, CGRectGetMaxY(btn3.frame)+20, MYScreenWidth-40, 90);
    [norbtn setImage:[UIImage imageNamed:@"mall_leimu"] forState:UIControlStateNormal];
    norbtn.layer.borderWidth = 0.5;
#warning 下面这句话如果不写的默认是居中
//    norbtn.picTileRange = 10;
//    norbtn.type = buttonTypeNormal;
//    norbtn.alignType = buttonAlignWithPic;
//    norbtn.picToViewRange = 0;
    [norbtn setTitle:@"测试1" forState:UIControlStateNormal];
    [self.view addSubview:norbtn];
    
    btn = [RankButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20 , CGRectGetMaxY(norbtn.frame)+20, (MYScreenWidth-60)/2, 150);
    [btn setImage:[UIImage imageNamed:@"mall_leimu"] forState:UIControlStateNormal];
    btn.layer.borderWidth = 0.5;
    btn.picTileRange = 55;  //设置图片和文字之间的间距
    btn.type = buttonTypePictBottom; //选择图文排列类型
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
    btn4= [RankButton buttonWithType:UIButtonTypeCustom];
    btn4.frame = CGRectMake(CGRectGetMaxX(btn.frame)+10 , CGRectGetMaxY(norbtn.frame)+20, (MYScreenWidth-60)/2, 150);
    [btn4 setImage:[UIImage imageNamed:@"mall_dingzhi"] forState:UIControlStateNormal];
    btn4.layer.borderWidth = 0.5;
    btn4.picTileRange = 15;
    btn4.type = buttonTypePicTop;
    [btn4 setTitle:@"测试" forState:UIControlStateNormal];
    [self.view addSubview:btn4];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
















