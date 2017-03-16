//
//  CustomImageVIew.m
//  Pods
//
//  Created by bhb on 17/3/16.
//
//

#import "CustomImageVIew.h"
#import "MBProgressHUD.h"
#import "SVProgressHUD.h"

@implementation CustomImageVIew

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        GPLoadingView *loading = [[GPLoadingView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        self.progressView = loading;
        [self addSubview:self.progressView];
    }
    return self;
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    self.progressView.center = self.center;
}

- (void)sd_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options progress:(SDWebImageDownloaderProgressBlock)progressBlock completed:(SDWebImageCompletionBlock)completedBlock {
    [self.progressView startAnimation];
    progressBlock = ^(NSInteger receivedSize, NSInteger expectedSize) {
        
    };
    completedBlock = ^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        [self.progressView stopAnimation];
        self.progressView.hidden = YES;
    };
    [super sd_setImageWithURL:url placeholderImage:placeholder options:options progress:progressBlock completed:completedBlock];
}

@end
