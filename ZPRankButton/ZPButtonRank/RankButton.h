//
//  RankButton.h
//  ZPButtonRank


//  联系开发者 QQ     1397819210
//           Email  1397819210@qq.com


//  Created by 郑鹏 on 15/6/8.
//  Copyright (c) 2015年 pzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    buttonTypeNormal,    //默认  左边图  右边文字 (可不写)
    buttonTypePicTop,    // 图片在上面 文字在下面
    buttonTypePicRight,  // 图片在右边 文字在左边
    buttonTypePictBottom //文字在上面  图片在下面
} ButtonType;

typedef enum : NSUInteger {
    buttonAlignWithNormal,  //默认   (可不写)
    buttonAlignWithPic,     //以图片为基准进行调整距离边缘的位置
    buttonAlignWithTitle    //以文字为基准进行调整距离边缘的位置
} ButtonAlignType;  //图文排版(只做了图文左右排列的支持  上下排列的整体位置调整 后期加)

@interface RankButton : UIButton

@property (nonatomic,assign) ButtonType type;

@property (nonatomic,assign) ButtonAlignType alignType;

//图片文字之间的间距
@property (nonatomic,assign) NSInteger picTileRange;

//以图片为基准,设置图片距离边缘的位置
@property (nonatomic,assign) NSInteger picToViewRange;


@end
















