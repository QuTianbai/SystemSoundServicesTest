//
//  ViewController.m
//  SystemSoundServicesTest
//
//  Created by 曲天白 on 16/1/1.
//  Copyright © 2016年 曲天白. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"播放" forState:0];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitleColor:[UIColor whiteColor] forState:0];
    [btn addTarget:self action:@selector(sound) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(0, 0, 70, 40);
    btn.center = self.view.center;
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)sound{
    SystemSoundID soundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"dingdong" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &soundID);
    //提示音 带震动
    AudioServicesPlayAlertSound(soundID);
    //系统声音
//    AudioServicesPlaySystemSound(soundID);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
