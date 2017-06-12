//
//  NSString+versionCompare.h
//  VersionCompere
//
//  Created by liicon on 2017/6/12.
//  Copyright © 2017年 max. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (versionCompare)

- (NSComparisonResult)versionCompare:(NSString *)newVersion;

@end
