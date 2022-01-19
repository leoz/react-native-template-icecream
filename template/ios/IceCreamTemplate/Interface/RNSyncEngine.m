//
//  RNSyncEngine.m
//  IceCreamTemplate
//
//  Created by Leonid Zolotarev on 1/8/22.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE (RNSyncEngine, NSObject)

RCT_EXTERN_METHOD(startEngine)
RCT_EXTERN_METHOD(pull)
RCT_EXTERN_METHOD(pushAll)

@end