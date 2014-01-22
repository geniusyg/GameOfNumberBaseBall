//
//  ViewController.m
//  GameOfNumberBaseBall
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *numImg1;
@property (weak, nonatomic) IBOutlet UIImageView *numImg2;
@property (weak, nonatomic) IBOutlet UIImageView *numImg3;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *enterButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;



@end

@implementation ViewController {
	NSInteger _index;
	NSInteger _count;
	NSMutableArray *_data;
	NSArray *_result;
	NSArray *_duple;
}


- (IBAction)click1:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"1_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:1]];
			break;
		case 2:
			if([_duple objectAtIndex:1] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"1_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:1]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:1] == [_data objectAtIndex:0] || [_duple objectAtIndex:1] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"1_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:1]];
			}
			break;
		default:
			break;
	}
}

- (IBAction)click2:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"2_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:2]];
			break;
		case 2:
			if([_duple objectAtIndex:2] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"2_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:2]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:2] == [_data objectAtIndex:0] || [_duple objectAtIndex:2] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"2_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:2]];
			}
			break;
		default:
			break;
	}
}
- (IBAction)click3:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"3_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:3]];
			break;
		case 2:
			if([_duple objectAtIndex:3] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"3_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:3]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:3] == [_data objectAtIndex:0] || [_duple objectAtIndex:3] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"3_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:3]];
			}
			break;
		default:
			break;
	}

}
- (IBAction)click4:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"4_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:4]];
			break;
		case 2:
			if([_duple objectAtIndex:4] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"4_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:4]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:4] == [_data objectAtIndex:0] || [_duple objectAtIndex:4] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"4_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:4]];
			}
			break;
		default:
			break;
	}

}
- (IBAction)click5:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"5_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:5]];
			break;
		case 2:
			if([_duple objectAtIndex:5] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"5_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:5]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:5] == [_data objectAtIndex:0] || [_duple objectAtIndex:5] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"5_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:5]];
			}
			break;
		default:
			break;
	}
}
- (IBAction)click6:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"6_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:6]];
			break;
		case 2:
			if([_duple objectAtIndex:6] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"6_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:6]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:6] == [_data objectAtIndex:0] || [_duple objectAtIndex:6] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"6_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:6]];
			}
			break;
		default:
			break;
	}

}
- (IBAction)click7:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"7_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:7]];
			break;
		case 2:
			if([_duple objectAtIndex:7] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"7_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:7]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:7] == [_data objectAtIndex:0] || [_duple objectAtIndex:7] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"7_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:7]];
			}
			break;
		default:
			break;
	}

}
- (IBAction)click8:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"8_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:8]];
			break;
		case 2:
			if([_duple objectAtIndex:8] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"8_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:8]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:8] == [_data objectAtIndex:0] || [_duple objectAtIndex:8] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"8_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:8]];
			}
			break;
		default:
			break;
	}

}
- (IBAction)click9:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"9_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:9]];
			break;
		case 2:
			if([_duple objectAtIndex:9] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"9_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:9]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:9] == [_data objectAtIndex:0] || [_duple objectAtIndex:9] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"9_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:9]];
			}
			break;
		default:
			break;
	}

}
- (IBAction)click0:(id)sender {
	switch (++_index) {
		case 1:
			self.numImg1.image = [UIImage imageNamed:@"0_c-64.png"];
			self.backButton.enabled = YES;
			[_data addObject:[NSNumber numberWithInt:0]];
			break;
		case 2:
			if([_duple objectAtIndex:0] == [_data objectAtIndex:0]) {
				self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg2.image = [UIImage imageNamed:@"0_c-64.png"];
				[_data addObject:[NSNumber numberWithInt:0]];
			}
			break;
		case 3:
			if([_duple objectAtIndex:0] == [_data objectAtIndex:0] || [_duple objectAtIndex:0] == [_data objectAtIndex:1]) {
				self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
				_index--;
			} else {
				self.numImg3.image = [UIImage imageNamed:@"0_c-64.png"];
				self.enterButton.enabled = YES;
				[_data addObject:[NSNumber numberWithInt:0]];
			}
			break;
		default:
			break;
	}

}
- (IBAction)clickBack:(id)sender {
	if(0 == --_index) {
		self.backButton.enabled = NO;
	}
	
	if(2 != --_index) {
		self.enterButton.enabled = NO;
	}
}
- (IBAction)clickEnter:(id)sender {
	[self initNumber];
}
- (IBAction)clickRe:(id)sender {
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	
	[self initNumber];
	self.enterButton.enabled = NO;
	self.backButton.enabled = NO;
	
	_duple = @[[NSNumber numberWithInt:0],[NSNumber numberWithInt:1],[NSNumber numberWithInt:2],[NSNumber numberWithInt:3],[NSNumber numberWithInt:4],[NSNumber numberWithInt:5],[NSNumber numberWithInt:6],[NSNumber numberWithInt:7],[NSNumber numberWithInt:8],[NSNumber numberWithInt:9]];
}

- (void)initNumber {
	_index = 0;
	_count = 0;
	_data = [NSMutableArray array];
	_result = @[[NSNumber numberWithInt:arc4random() % 10],[NSNumber numberWithInt:arc4random() % 10],[NSNumber numberWithInt:arc4random() % 10]];
	NSLog(@"result : %@", _result);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end































