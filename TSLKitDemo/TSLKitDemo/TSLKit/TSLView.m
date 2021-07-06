//
//  TSLView.m
//  TSLKitDemo
//
//  Created by TSL on 2021/7/2.
//

#import "TSLView.h"

@implementation TSLView

+ (UIView *)getView {
    UIView *view = [[UIView alloc] init];
    view.layer.masksToBounds = YES;
    view.backgroundColor = UIColor.whiteColor;
    return view;
}

+ (UIView *)getViewWithRadius:(CGFloat)radius {
    UIView *view = [self getView];
    view.layer.cornerRadius = radius;
    return view;
}

+ (UILabel *)getLabelWithFont:(UIFont *)titleFont withTextColor:(UIColor *)textColor {
    UILabel *label = [[UILabel alloc] init];
    label.font = titleFont;
    label.textColor = textColor;
    label.backgroundColor = UIColor.clearColor;
    return label;
}

+ (UIImageView *)getImageView {
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = UIColor.clearColor;
    imageView.layer.masksToBounds = YES;
    return imageView;
}

+ (UIImageView *)getImageViewWithImageName:(NSString *)imageName {
    UIImageView *imageView = [self getImageView];
    imageView.image = [UIImage imageNamed:imageName];
    return imageView;
}

+ (UIButton *)getButtonWithTitleFont:(UIFont *)titleFont withTextColor:(UIColor *)textColor withTarget:(id)target withAction:(SEL)action {
    UIButton *button = [self getButtonWithTarget:target withAction:action];
    [button.titleLabel setFont:titleFont];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    return button;
}

+ (UIButton *)getButtonWithTarget:(id)target withAction:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = UIColor.clearColor;
    button.adjustsImageWhenHighlighted = NO;
    button.layer.masksToBounds = YES;
    return button;
}

+ (UITextField *)getTextFieldWithFont:(UIFont *)titleFont withTextColor:(UIColor *)textColor withPlaceholder:(NSString *)placeholder withDelegate:(id<UITextFieldDelegate>)delegate {
    UITextField *textField = [[UITextField alloc] init];
    textField.backgroundColor = UIColor.clearColor;
    textField.font = titleFont;
    textField.textColor = textColor;
    textField.placeholder = placeholder;
    textField.delegate = delegate;
    return textField;
}

+ (UIScrollView *)getScrollViewWithDelegate:(id<UIScrollViewDelegate>)delegate {
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = UIColor.whiteColor;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.delegate = delegate;
    return scrollView;
}

+ (UITextView *)getTextViewWithDelegate:(id<UITextViewDelegate>)delegate {
    UITextView *textView = [[UITextView alloc] init];
    textView.showsHorizontalScrollIndicator = NO;
    textView.showsVerticalScrollIndicator = NO;
    textView.backgroundColor = UIColor.whiteColor;
    textView.delegate = delegate;
    return textView;
}

+ (UITableView *)getTableViewWithDelegate:(id<UITableViewDataSource,UITableViewDelegate>)delegate {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    tableView.backgroundColor = UIColor.whiteColor;
    tableView.showsHorizontalScrollIndicator = NO;
    tableView.showsVerticalScrollIndicator = NO;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.delegate = delegate;
    tableView.dataSource = delegate;
    if (@available(iOS 11.0, *)) {
        tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return tableView;
}

+ (UITableView *)getGroupedTableViewWithDelegate:(id<UITableViewDataSource,UITableViewDelegate>)delegate {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    tableView.backgroundColor = UIColor.whiteColor;
    tableView.showsHorizontalScrollIndicator = NO;
    tableView.showsVerticalScrollIndicator = NO;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.delegate = delegate;
    tableView.dataSource = delegate;
    if (@available(iOS 11.0, *)) {
        tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return tableView;
}

+ (UICollectionView *)getCollectionViewWithFlowLayout:(UICollectionViewLayout *)layout withDelegate:(nullable id<UICollectionViewDataSource, UICollectionViewDelegate>)delegate {
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    collectionView.backgroundColor = UIColor.whiteColor;
    collectionView.showsHorizontalScrollIndicator = NO;
    collectionView.showsVerticalScrollIndicator = NO;
    collectionView.delegate = delegate;
    collectionView.dataSource = delegate;
    if (@available(iOS 11.0, *)) {
        collectionView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return collectionView;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
