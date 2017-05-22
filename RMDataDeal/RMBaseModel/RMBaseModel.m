//
//  RMBaseModel.m
//  RMDataDeal
//
//  Created by 王林 on 2017/5/22.
//  Copyright © 2017年 wanglin. All rights reserved.
//

#import "RMBaseModel.h"
#import <objc/runtime.h>

@implementation RMBaseModel


- (id)initWithDictionary:(NSDictionary *)dic
{
	if (![dic isKindOfClass:[NSDictionary class]]) {
		return nil;
	}
	
	self = [super init];
	if (self) {
		[self setAttributesFromDictionary:dic];
	}
	
	return self;
}

- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary {
	
	if (![aDictionary isKindOfClass:[NSDictionary class]]) {
		return;
	}
	
	[self setValuesForKeysWithDictionary:aDictionary];
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
	
}

- (NSString *)description
{
	NSMutableString *des = [NSMutableString string];
	
	unsigned int allCount;
	
	objc_property_t *properties = class_copyPropertyList([self class], &allCount);
	
	for (int i = 0; i < allCount; i ++) {
		@autoreleasepool {
			objc_property_t property = properties[i];
			NSString *propertyName = [NSString stringWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
			id propertyValue = [self valueForKey:propertyName];
			
			if (nil == propertyValue || [NSNull null] == (NSNull *)propertyValue) {
				propertyValue = @"";
			}
			
			if (i < allCount - 1) {
				[des appendFormat:@"%@:'%@',",propertyName,propertyValue];
			}else
			{
				[des appendFormat:@"%@:'%@'",propertyName,propertyValue];
			}
		}
	}
	
	return des;
}

@end
