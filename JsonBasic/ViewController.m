//
//  ViewController.m
//  JsonBasic
//
//  Created by 谭郁葱 on 2017/12/12.
//  Copyright © 2017年 谭郁葱. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

static NSDictionary* dic;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString* path = [[NSBundle mainBundle] pathForResource:@"tt" ofType:@"json"];
   
    NSData* datajson = [NSData dataWithContentsOfFile:path];
    
    dic = [NSJSONSerialization JSONObjectWithData:datajson options:NSJSONReadingMutableContainers error:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",dic);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
