//
//  NSString+versionCompare.m
//  VersionCompere
//
//  Created by liicon on 2017/6/12.
//  Copyright © 2017年 max. All rights reserved.
//

#import "NSString+versionCompare.h"

@implementation NSString (versionCompare)

- (NSComparisonResult)versionCompare:(NSString *)newVersion{
    
    NSArray *oldComponents = [self componentsSeparatedByString:@"."];
    NSArray *newComponents = [newVersion componentsSeparatedByString:@"."];
    
    NSComparisonResult result = NSOrderedSame;
    for (int index = 0; index < oldComponents.count; index ++) {
        NSInteger oldNumber = [[oldComponents objectAtIndex:index] integerValue];
        if (index < newComponents.count) {
            NSInteger newNumber = [[newComponents objectAtIndex:index] integerValue];
            if (oldNumber < newNumber) {
                result = NSOrderedAscending;
                break;
            }else if (oldNumber > newNumber){
                result = NSOrderedDescending;
                break;
            }
        }else if (oldNumber > 0){
            result = NSOrderedDescending;
            break;
        }
    }
    
    return result;
}

@end
