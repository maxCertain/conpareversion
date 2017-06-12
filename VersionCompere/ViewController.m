//
//  ViewController.m
//  VersionCompere
//
//  Created by liicon on 2017/6/9.
//  Copyright © 2017年 max. All rights reserved.
//

#import "ViewController.h"
#import "NSString+versionCompare.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *preVersion = @"1.0";
    NSString *nextVersion = @"1.0.10";
    
    NSComparisonResult result = [preVersion compare:nextVersion];
    NSLog(@"result is = %li",(long)result);
    
    NSComparisonResult otherResult = [preVersion versionCompare:nextVersion];
    NSLog(@"other result is %li",otherResult);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
