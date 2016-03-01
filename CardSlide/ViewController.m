//
//  ViewController.m
//  CardSlide
//
//  Created by DavidWang on 15/11/25.
//  Copyright © 2015年 DavidWang. All rights reserved.
//

#import "ViewController.h"
#import "DWViewCell.h"
#import "DWFlowLayout.h"

#define SCREENWITH   [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController (){
    NSArray *data;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DWFlowLayout *layout = [[DWFlowLayout alloc] init];
    //设置是否需要分页
    [layout setPagingEnabled:YES];
    self.collectionView.collectionViewLayout = layout;
    data = @[@"01",@"02",@"03",@"04",@"05",@"01",@"02",@"03",@"04",@"05"];
    [_collectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark cell的数量
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return data.count;
}

#pragma mark cell的视图
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"DWViewCell";
    DWViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    NSInteger row = indexPath.row;
    cell.showImg.image = [UIImage imageNamed:[data objectAtIndex:row]];
    
    return cell;
}

#pragma mark cell的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(SCREENWITH - 60, SCREENHEIGHT - 64 - 60 - 60);
}

#pragma mark cell的点击事件
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击图片%ld",indexPath.row);
}

@end
