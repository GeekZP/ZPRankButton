//
//  RankButton.m
//  ZPButtonRank


//  联系开发者 QQ     1397819210
//           Email  1397819210@qq.com


//  Created by 郑鹏 on 15/6/8.
//  Copyright (c) 2015年 pzheng. All rights reserved.
//

#import "RankButton.h"

@implementation RankButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        [self setTitleColor:[UIColor colorWithRed:0.44f green:0.44f blue:0.44f alpha:1.00f] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor colorWithRed:0.64f green:0.64f blue:0.64f alpha:1.00f] forState:UIControlStateHighlighted];
    }
    return self;
}



-(void)layoutSubviews {
    [super layoutSubviews];
    
    switch (_type) {
        case buttonTypeNormal:
        {
            CGPoint center = self.imageView.center;
            CGRect newFrame = [self titleLabel].frame;
            CGPoint tcenter = self.titleLabel.center;
            CGRect imaFrame = [self imageView].frame;
            if (_alignType == buttonAlignWithNormal) {
                center.x = imaFrame.size.width/2 + (self.frame.size.width - (imaFrame.size.width+newFrame.size.width+_picTileRange))/2;
                
                center.y = self.frame.size.height/2;
                self.imageView.center = center;
                newFrame.origin.x = center.x+imaFrame.size.height/2 + _picTileRange;
                
                self.titleLabel.frame = newFrame;
            }
            else if (_alignType == buttonAlignWithPic) {
                center.x = imaFrame.size.width/2 + _picToViewRange;
                self.imageView.center = center;
                
                newFrame.origin.x = center.x+imaFrame.size.height/2 + _picTileRange;
                self.titleLabel.frame = newFrame;
            }
            else if (_alignType == buttonAlignWithTitle)
            {
                tcenter.x = self.frame.size.width- newFrame.size.width/2 - _picToViewRange;
                tcenter.y = self.frame.size.height/2;
                self.titleLabel.center = tcenter;
                
                center.x = tcenter.x-newFrame.size.width/2-_picTileRange-imaFrame.size.width/2;
                self.imageView.center = center;
            }
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
        }
            break;
        case buttonTypePicTop:
        {
            CGPoint center = self.imageView.center;
            CGRect newFrame = [self titleLabel].frame;
            if (_alignType == buttonAlignWithPic)
            {
                
            }
            else if (_alignType == buttonAlignWithTitle)
            {
                
            }
            else
            {
                center.x = self.frame.size.width/2;
                center.y = self.imageView.frame.size.height/2+(self.frame.size.height - (self.imageView.frame.size.height+newFrame.size.height+5+_picTileRange))/2;
                self.imageView.center = center;
                
                newFrame.origin.x = 0;
                newFrame.origin.y = center.y+self.imageView.frame.size.height/2 + 5+_picTileRange;
                newFrame.size.width = self.frame.size.width;
                
                self.titleLabel.frame = newFrame;
                self.titleLabel.textAlignment = NSTextAlignmentCenter;
            }
        }
            break;
        case buttonTypePicRight:
        {
            CGPoint center = self.titleLabel.center;
            CGRect newFrame = [self imageView].frame;
            CGPoint imacenter = self.imageView.center;
            CGRect tFrame = [self titleLabel].frame;

            if (_alignType == buttonAlignWithPic)
            {
                imacenter.x = self.frame.size.width-newFrame.size.width/2-_picToViewRange;
                self.imageView.center = imacenter;
                
                center.x = imacenter.x-newFrame.size.width/2-_picTileRange-tFrame.size.width/2;
                self.titleLabel.center = center;
            }
            else if (_alignType == buttonAlignWithTitle)
            {
                center.x = self.titleLabel.frame.size.width/2 + _picToViewRange;
                self.titleLabel.center = center;
                
                newFrame.origin.x = center.x+self.titleLabel.frame.size.width/2+_picTileRange;
                self.imageView.frame = newFrame;
            }
            else
            {
                center.x = self.titleLabel.frame.size.width/2 + (self.frame.size.width - (self.titleLabel.frame.size.width+newFrame.size.width+5+_picTileRange))/2;
                self.titleLabel.center = center;
                
                newFrame.origin.x = center.x+self.titleLabel.frame.size.width/2+5+_picTileRange;
                self.imageView.frame = newFrame;
            }
        }
            break;
        case buttonTypePictBottom:
        {
            if (_alignType == buttonAlignWithPic) {
                
            }
            else if (_alignType == buttonAlignWithTitle)
            {
                
            }
            else
            {
                CGPoint center = self.titleLabel.center;
                CGRect newFrame = [self imageView].frame;
                
                center.x = self.frame.size.width/2;
                center.y = self.titleLabel.frame.size.height/2+(self.frame.size.height-self.titleLabel.frame.size.height - newFrame.size.height - 5 - _picTileRange)/2;
                self.titleLabel.center = center;
                self.titleLabel.textAlignment = NSTextAlignmentCenter;
                
                newFrame.origin.x = (self.frame.size.width-newFrame.size.width)/2;
                newFrame.origin.y = center.y+5+_picTileRange;
                self.imageView.frame = newFrame;
            }
        }
            break;
        default:
            break;
    }
}

@end
















