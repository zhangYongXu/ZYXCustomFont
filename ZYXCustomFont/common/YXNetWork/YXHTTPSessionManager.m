//
//  GGHTTPClient.m
//  YXNetWorkEngineV1.0
//
//  Created by Static Ga on 13-11-14.
//  Copyright (c) 2013年 Static Ga. All rights reserved.
//

#import "YXHTTPSessionManager.h"

@implementation YXHTTPSessionManager

+ (instancetype)sessionManager {
    static YXHTTPSessionManager *mySessionManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mySessionManager = [[YXHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:APPBaseURL]];
        mySessionManager.requestSerializer = [AFJSONRequestSerializer serializer];
        [mySessionManager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [mySessionManager.requestSerializer setValue:@"d842971e25478c228bc6712028262562" forHTTPHeaderField:@"X-Bmob-Application-Id"];
        [mySessionManager.requestSerializer setValue:@"ebc8a0834bef16a20a49febb35e9541a" forHTTPHeaderField:@"X-Bmob-REST-API-Key"];
    });
    return mySessionManager;
}

@end
