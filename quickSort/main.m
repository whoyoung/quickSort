//
//  main.m
//  quickSort
//
//  Created by young on 2017/7/29.
//  Copyright © 2017年 young. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
void quickSort(int a[],int leftIndx,int rightIndex) {
    if (leftIndx < rightIndex) {
        int x = a[leftIndx], i = leftIndx, j = rightIndex;
        while (i < j) {
            while (i < j && a[j] >= x) j--;
            if (i < j) a[i++] = a[j];
            
            while (i < j && a[i] < x) i++;
            if (i < j) a[j--] = a[i];
        }
        a[i] = x;
        
        quickSort(a, leftIndx, i-1);
        quickSort(a, i+1, rightIndex);
    }
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        int a[10] = {4,2,1,6,7,3,8,9,0,5};
        quickSort(a, 0, 9);
        for (int i=0; i<10; i++) {
            printf("%d,",a[i]);
        }
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
