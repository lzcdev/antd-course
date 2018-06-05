//
//  NetWorkTool.m
//  GeekTime
//
//  Created by LuzhiChao on 2018/6/5.
//  Copyright © 2018年 LuzhiChao. All rights reserved.
//

#import "NetWorkTool.h"
#import <AFNetworking.h>

@implementation NetWorkTool

+ (void)GET:(NSString *)URLString parameters:(id)parameters downloadProgress:(void(^)(NSProgress *downloadProgress))ldDownloadProgress success:(void(^)(NSURLSessionDataTask *task, id responseObject))ldSuccess failure:(void(^)(NSURLSessionDataTask *task, NSError *error))ldFailure {
    
    NSString *urlPath = [NSString stringWithFormat:@"%@%@",BASEPATH,URLString];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes =  [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", @"text/plain", nil];

    [manager GET:urlPath parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        ldDownloadProgress(downloadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
          id response =  [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        ldSuccess(task, response);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        ldSuccess(task, error);
    }];
    
    
}

+ (void)POST:(NSString *)URLString parameters:(id)parameters downloadProgress:(void(^)(NSProgress *downloadProgress))ldDownloadProgress success:(void(^)(NSURLSessionDataTask *task, id responseObject))ldSuccess failure:(void(^)(NSURLSessionDataTask *task, NSError *error, NSString *string))ldFailure {
    
}


@end
