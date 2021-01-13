//
//  ViewController.m
//  XPButton
//
//  Created by mac on 2021/1/13.
//  Copyright © 2021 xuPeng. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "UIButton+ImageTitleSpacing.h"

@interface ViewController ()
@property (nonatomic , strong)UIButton *btn1;
@property (nonatomic , strong)UIButton *btn2;
@property (nonatomic , strong)UIButton *btn3;
@property (nonatomic , strong)UIButton *btn4;
@property (nonatomic , strong)UIButton *btn5;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.btn1];
    [self.view addSubview:self.btn2];
    [self.view addSubview:self.btn3];
    [self.view addSubview:self.btn4];
    [self.view addSubview:self.btn5];
    
    [self addConstraint];
    [_btn2 layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleTop imageTitleSpace:10];
    [_btn3 layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleLeft imageTitleSpace:10];
    [_btn4 layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleBottom imageTitleSpace:10];
    [_btn5 layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleRight imageTitleSpace:10];
}

- (UIButton *)btn1{
    if (!_btn1) {
        _btn1 = [[UIButton alloc] initWithFrame:CGRectZero];
        [_btn1 setTitle:@"首页" forState:UIControlStateNormal];
        [_btn1 setTitleColor:[UIColor orangeColor]forState:UIControlStateNormal];
        _btn1.backgroundColor = [UIColor systemGroupedBackgroundColor];
        [_btn1 setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
    }
    return _btn1;
}

- (UIButton *)btn2{
    if (!_btn2) {
        _btn2 = [[UIButton alloc] initWithFrame:CGRectZero];
        [_btn2 setTitle:@"首页" forState:UIControlStateNormal];
        [_btn2 setTitleColor:[UIColor orangeColor]forState:UIControlStateNormal];
        _btn2.backgroundColor = [UIColor systemGroupedBackgroundColor];
        [_btn2 setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
        
    }
    return _btn2;
}

- (UIButton *)btn3{
    if (!_btn3) {
        _btn3 = [[UIButton alloc] initWithFrame:CGRectZero];
        [_btn3 setTitle:@"首页" forState:UIControlStateNormal];
        [_btn3 setTitleColor:[UIColor orangeColor]forState:UIControlStateNormal];
        _btn3.backgroundColor = [UIColor systemGroupedBackgroundColor];
        [_btn3 setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
    }
    return _btn3;
}

- (UIButton *)btn4{
    if (!_btn4) {
        _btn4 = [[UIButton alloc] initWithFrame:CGRectZero];
        [_btn4 setTitle:@"首页" forState:UIControlStateNormal];
         [_btn4 setTitleColor:[UIColor orangeColor]forState:UIControlStateNormal];
        _btn4.backgroundColor = [UIColor systemGroupedBackgroundColor];
        [_btn4 setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
    }
    return _btn4;
}

- (UIButton *)btn5{
    if (!_btn5) {
        _btn5 = [[UIButton alloc] initWithFrame:CGRectZero];
        [_btn5 setTitle:@"首页" forState:UIControlStateNormal];
        [_btn5 setTitleColor:[UIColor orangeColor]forState:UIControlStateNormal];
        _btn5.backgroundColor = [UIColor systemGroupedBackgroundColor];
        [_btn5 setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
    }
    return _btn5;
}

- (void)addConstraint{
    [self.btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(130);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(80);
    }];
    [self.btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
           make.top.equalTo(self.btn1.mas_bottom).offset(30);
           make.centerX.equalTo(self.view);
        make.width.height.equalTo(self.btn1);
       }];
    [self.btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.btn2.mas_bottom).offset(30);
            make.centerX.equalTo(self.view);
            make.width.height.equalTo(self.btn1);
       }];
    [self.btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.btn3.mas_bottom).offset(30);
            make.centerX.equalTo(self.view);
            make.width.height.equalTo(self.btn1);
       }];
    [self.btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.btn4.mas_bottom).offset(30);
            make.centerX.equalTo(self.view);
            make.width.height.equalTo(self.btn1);
       }];
}
@end
