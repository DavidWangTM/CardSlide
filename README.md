# CardSlide
仿Nice卡片滑动
## Preview

![image](https://raw.githubusercontent.com/DavidWangTM/CardSlide/master/nice.gif)
## Usage

The initialization is very simple. Just like the sample below:

```Objective-C
  DWFlowLayout *layout = [[DWFlowLayout alloc] init];
  self.collectionView.collectionViewLayout = layout;
  
  //为垂直缩放除以系数
  static CGFloat const ActiveDistance = 350;
  //越大，缩放越大。
  static CGFloat const ScaleFactor = 0.05;
  
```
