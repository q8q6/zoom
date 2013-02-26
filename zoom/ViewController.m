//
//  ViewController.m
//  zoom
//
//  Created by Ahmed alfadhli on 2/9/13.
//  Copyright (c) 2013 Ahmed alfadhli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 //   zoomInButton=[[UIButton alloc]init];
 //   zoomOutButton=[[UIButton alloc]init];
  
    image = [UIImage imageNamed:@"edit.png"];
    img = [[UIImageView alloc] initWithImage:image];
    img.userInteractionEnabled = YES;
    img.backgroundColor = [UIColor clearColor];
    
    img.contentMode =  UIViewContentModeCenter;
    img.frame = CGRectMake(0, 50, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:img];
    
    twoFingerPinch = [[UIPinchGestureRecognizer alloc]
                      initWithTarget:self
                      action:@selector(twoFingerPinch:)];
    [img addGestureRecognizer:twoFingerPinch];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)twoFingerPinch:(UIPinchGestureRecognizer *)recognizer
{
    //    NSLog(@"Pinch scale: %f", recognizer.scale);
    if (recognizer.scale >1.0f && recognizer.scale < 2.5f) {
        CGAffineTransform transform = CGAffineTransformMakeScale(recognizer.scale, recognizer.scale);
        img.transform = transform;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
