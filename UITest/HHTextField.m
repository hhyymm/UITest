//
//  HHTextField.m
//  UITest
//
//  Created by Heym on 2018/12/4.
//  Copyright © 2018 HHYYMM. All rights reserved.
//

#import "HHTextField.h"

@implementation HHTextField

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSMutableDictionary *dict =  [NSMutableDictionary dictionaryWithDictionary:self.defaultTextAttributes];
        NSMutableParagraphStyle *style = [dict[NSParagraphStyleAttributeName] mutableCopy];//段落样式
        style.minimumLineHeight = ceil(self.font.lineHeight);
        dict[NSParagraphStyleAttributeName] = style;
        self.defaultTextAttributes = dict;
    }
    return self;
}

//- (CGRect)borderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds {
    CGRect frame = [super textRectForBounds:bounds];
    
    NSLog(@"%s %@",__func__,[NSValue valueWithCGRect:frame]);
    return frame;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds{
    CGRect frame = [super placeholderRectForBounds:bounds];
    NSLog(@"%s %@",__func__,[NSValue valueWithCGRect:frame]);
    return frame;
}
- (CGRect)editingRectForBounds:(CGRect)bounds{
    CGRect frame = [super editingRectForBounds:bounds];
    NSLog(@"%s %@",__func__,[NSValue valueWithCGRect:frame]);
    return frame;
}
//- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
//- (CGRect)leftViewRectForBounds:(CGRect)bounds;
//- (CGRect)rightViewRectForBounds:(CGRect)bounds;

- (void)drawTextInRect:(CGRect)rect{
    [super drawTextInRect:rect];
}

- (void)drawPlaceholderInRect:(CGRect)rect{
    [super drawPlaceholderInRect:rect];
}


@end
