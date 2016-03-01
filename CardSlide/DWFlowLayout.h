//
//  DWFlowLayout.h
//  CardSlide
//
//  Created by DavidWang on 15/11/25.
//  Copyright © 2015年 DavidWang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DWFlowLayout : UICollectionViewFlowLayout

@property CGFloat move_x;
@property BOOL isPagingEnabled;
-(void)setPagingEnabled:(BOOL)isPagingEnabled;

@end
