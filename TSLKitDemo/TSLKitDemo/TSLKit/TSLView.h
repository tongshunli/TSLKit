//
//  TSLView.h
//  TSLKitDemo
//
//  Created by TSL on 2021/7/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TSLView : UIView

+ (UIView *)getView;

+ (UIView *)getViewWithRadius:(CGFloat)radius;

+ (UILabel *)getLabelWithFont:(UIFont *)titleFont withTextColor:(UIColor *)textColor;

+ (UIImageView *)getImageView;

+ (UIImageView *)getImageViewWithRadius:(CGFloat)radius withImageName:(UIImage *)image;

+ (UIButton *)getButtonWithTitleFont:(UIFont *)titleFont withTextColor:(UIColor *)textColor withTarget:(id)target withAction:(SEL)action;

+ (UIButton *)getButtonWithTarget:(id)target withAction:(SEL)action;

+ (UITextField *)getTextFieldWithFont:(UIFont *)titleFont withTextColor:(UIColor *)textColor withPlaceholder:(NSString *)placeholder withDelegate:(id<UITextFieldDelegate>)delegate;

+ (UIScrollView *)getScrollViewWithDelegate:(id<UIScrollViewDelegate>)delegate;

+ (UITextView *)getTextViewWithDelegate:(id<UITextViewDelegate>)delegate;

+ (UITableView *)getTableViewWithDelegate:(id<UITableViewDataSource,UITableViewDelegate>)delegate;

+ (UITableView *)getGroupedTableViewWithDelegate:(id<UITableViewDataSource,UITableViewDelegate>)delegate;

+ (UICollectionView *)getCollectionViewWithFlowLayout:(UICollectionViewLayout *)layout withDelegate:(nullable id<UICollectionViewDataSource, UICollectionViewDelegate>)delegate;

@end

NS_ASSUME_NONNULL_END
