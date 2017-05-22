//
//  RMFirstModel.h
//  RMDataDeal
//
//  Created by 王林 on 2017/5/22.
//  Copyright © 2017年 wanglin. All rights reserved.
//

#import "RMBaseModel.h"

@interface RMFirstModel : RMBaseModel

@property(nonatomic, strong)NSString *doctorId;
@property(nonatomic, strong)NSString *doctorUrl;//医生头像
@property(nonatomic, strong)NSString *doctorName;
@property(nonatomic, strong)NSArray *consultList;//咨询信息
@property(nonatomic, strong)NSArray *evaluateList;//评价信息

+(instancetype)itemWithDic:(NSDictionary *)dic;

@end


@interface RMSecondModel : RMBaseModel

@property(nonatomic, strong)NSString *consultName;
@property(nonatomic, strong)NSString *money;

@end


@interface RMThirdModel : RMBaseModel

@property(nonatomic, strong)NSString *evaluateTitle;//评价标题 全部评价 很满意 满意 不满意
@property(nonatomic, strong)NSString *evaluateNum;//评价数量

@end
