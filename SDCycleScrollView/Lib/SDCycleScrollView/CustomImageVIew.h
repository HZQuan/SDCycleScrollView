//
//  CustomImageVIew.h
//  Pods
//
//  Created by bhb on 17/3/16.
//
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"
#import "GPLoadingView.h"

@interface CustomImageVIew : UIImageView

@property (nonatomic, strong) GPLoadingView *progressView;

@end
