//
//  ViewController.m
//  GameOfNumberBaseBall
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *numImg1;
@property (weak, nonatomic) IBOutlet UIImageView *numImg2;
@property (weak, nonatomic) IBOutlet UIImageView *numImg3;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *enterButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UILabel *strikeLabel;
@property (weak, nonatomic) IBOutlet UILabel *ballLabel;

@end

@implementation ViewController {
	NSInteger _index;
	NSInteger _count;
	NSMutableArray *_data;
	NSArray *_result;
	NSArray *_duple;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if(1 == alertView.tag) {
		if(alertView.cancelButtonIndex == buttonIndex) {
			[self initNumber];
		}
	} else if(2 == alertView.tag) {
		if(alertView.cancelButtonIndex != buttonIndex) {
			[self initNumber];
		}
	}
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
			_index--;
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
			_index--;
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
			_index--;
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
			_index--;
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
			_index--;
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
			_index--;
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
			_index--;
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
			_index--;
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
			_index--;
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
			_index--;
			break;
	}

}
- (IBAction)clickBack:(id)sender {
	
	switch (--_index) {
		case 0:
			self.backButton.enabled = NO;
			self.numImg1.image = [UIImage imageNamed:@"question-75.png"];
			break;
		case 1:
			self.backButton.enabled = YES;
			self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
		case 2:
			self.backButton.enabled = YES;
			self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
		default:
			break;
	}
	
	[_data removeObjectAtIndex:_index];
	self.enterButton.enabled = NO;
}
- (IBAction)clickEnter:(id)sender {
	
	NSLog(@"data %@",_data);

	if([_data objectAtIndex:0] == [_result objectAtIndex:0] && [_data objectAtIndex:1] == [_result objectAtIndex:1] && [_data objectAtIndex:2] == [_result objectAtIndex:2]) {
		self.strikeLabel.text = @"3";
		self.ballLabel.text = @"0";
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulation!!!!" message:[NSString stringWithFormat:@"Count : %d", _count+1] delegate:self cancelButtonTitle:@"확인" otherButtonTitles:nil];
		alert.tag = 1;
		[alert show];
		return;
	}
	
	else if([_data objectAtIndex:0] != [_result objectAtIndex:0] && [_data objectAtIndex:1] == [_result objectAtIndex:1] && [_data objectAtIndex:2] == [_result objectAtIndex:2]) {
		self.strikeLabel.text = @"2";
		if([_data objectAtIndex:0] == [_result objectAtIndex:1] || [_data objectAtIndex:0] == [_result objectAtIndex:1]) {
			self.ballLabel.text = @"1";
		} else {
			self.ballLabel.text = @"0";
		}
	} else if([_data objectAtIndex:0] == [_result objectAtIndex:0] && [_data objectAtIndex:1] != [_result objectAtIndex:1] && [_data objectAtIndex:2] == [_result objectAtIndex:2]) {
		self.strikeLabel.text = @"2";
		if([_data objectAtIndex:1] == [_result objectAtIndex:0] || [_data objectAtIndex:1] == [_result objectAtIndex:2]) {
			self.ballLabel.text = @"1";
		} else {
			self.ballLabel.text = @"0";
		}
	} else if([_data objectAtIndex:0] == [_result objectAtIndex:0] && [_data objectAtIndex:1] == [_result objectAtIndex:1] && [_data objectAtIndex:2] != [_result objectAtIndex:2]) {
		self.strikeLabel.text = @"2";
		if([_data objectAtIndex:2] == [_result objectAtIndex:0] || [_data objectAtIndex:2] == [_result objectAtIndex:1]) {
			self.ballLabel.text = @"1";
		} else {
			self.ballLabel.text = @"0";
		}
	}
	
	else if([_data objectAtIndex:0] == [_result objectAtIndex:0] && [_data objectAtIndex:1] != [_result objectAtIndex:1] && [_data objectAtIndex:2] != [_result objectAtIndex:2]) {
		self.strikeLabel.text = @"1";
		if([_data objectAtIndex:1] == [_result objectAtIndex:2] && [_data objectAtIndex:2] == [_result objectAtIndex:1]) {
			self.ballLabel.text = @"2";
		} else if([_data objectAtIndex:1] == [_result objectAtIndex:2] || [_data objectAtIndex:2] == [_result objectAtIndex:1]) {
			self.ballLabel.text = @"1";
		} else {
			self.ballLabel.text = @"0";
		}
	} else if([_data objectAtIndex:0] != [_result objectAtIndex:0] && [_data objectAtIndex:1] == [_result objectAtIndex:1] && [_data objectAtIndex:2] != [_result objectAtIndex:2]) {
		self.strikeLabel.text = @"1";
		if([_data objectAtIndex:0] == [_result objectAtIndex:2] && [_data objectAtIndex:2] == [_result objectAtIndex:0]) {
			self.ballLabel.text = @"2";
		} else if([_data objectAtIndex:0] == [_result objectAtIndex:2] || [_data objectAtIndex:2] == [_result objectAtIndex:0]) {
			self.ballLabel.text = @"1";
		} else {
			self.ballLabel.text = @"0";
		}
	} else if([_data objectAtIndex:0] != [_result objectAtIndex:0] && [_data objectAtIndex:1] != [_result objectAtIndex:1] && [_data objectAtIndex:2] == [_result objectAtIndex:2]) {
		self.strikeLabel.text = @"1";
		if([_data objectAtIndex:0] == [_result objectAtIndex:1] && [_data objectAtIndex:1] == [_result objectAtIndex:0]) {
			self.ballLabel.text = @"2";
		} else if([_data objectAtIndex:0] == [_result objectAtIndex:1] || [_data objectAtIndex:1] == [_result objectAtIndex:0]) {
			self.ballLabel.text = @"1";
		} else {
			self.ballLabel.text = @"0";
		}
	} else {
		self.strikeLabel.text = @"0";
		NSInteger tmp = 0;
		for(int i=0; i<3; i++) {
			for(int j=i+1; j<3; j++) {
				if(([_data objectAtIndex:i] == [_result objectAtIndex:j]) || ([_data objectAtIndex:j] == [_result objectAtIndex:i])) {
					tmp++;
				 }
			}
		}
		if(tmp == 3) {
			self.ballLabel.text = @"3";
		} else if(tmp == 2) {
			self.ballLabel.text = @"2";
		} else if(tmp == 1) {
			self.ballLabel.text = @"1";
		}
	}
	
	
	[self initEnter];
	
	self.countLabel.text = [NSString stringWithFormat:@"%d", ++_count];

}
- (IBAction)clickRe:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Really" message:@"Quit this game?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
	alert.tag = 2;
	[alert show];
}

- (void)initEnter {
	[self initImg];
	_index = 0;
	_data = [NSMutableArray array];
	self.backButton.enabled = NO;
	self.enterButton.enabled = NO;
}

- (void)initImg {
	self.numImg1.image = [UIImage imageNamed:@"question-75.png"];
	self.numImg2.image = [UIImage imageNamed:@"question-75.png"];
	self.numImg3.image = [UIImage imageNamed:@"question-75.png"];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	
	[self initNumber];
}

- (void)initNumber {
	self.enterButton.enabled = NO;
	self.backButton.enabled = NO;
	
	[self initImg];
	
	_index = 0;
	_count = 0;
	_data = [[NSMutableArray alloc] init];
	
	self.strikeLabel.text = @"0";
	self.ballLabel.text = @"0";
	
	int num1 = -1;
	int num2 = -1;
	int num3 = -1;
	
	do {
		num1 = arc4random() % 10;
		num2 = arc4random() % 10;
		num3 = arc4random() % 10;
		
		if(num1 != num2 && num1 != num3 && num2 != num3) {
			break;
		}
		
	} while(YES);
	
	_result = @[[NSNumber numberWithInt:num1],[NSNumber numberWithInt:num2],[NSNumber numberWithInt:num3]];
	
	self.countLabel.text = @"0";
	
	NSLog(@"result : %@", _result);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_duple = @[[NSNumber numberWithInt:0],[NSNumber numberWithInt:1],[NSNumber numberWithInt:2],[NSNumber numberWithInt:3],[NSNumber numberWithInt:4],[NSNumber numberWithInt:5],[NSNumber numberWithInt:6],[NSNumber numberWithInt:7],[NSNumber numberWithInt:8],[NSNumber numberWithInt:9]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end































