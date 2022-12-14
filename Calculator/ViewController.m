//
//  ViewController.m
//  Calculator
//
//  Created by André Almeida on 2022-10-14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    
    int currentOperation;
    
    float result;
    float currentNumber;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)operationPressed:(id)sender {
    
    if ( currentOperation == 0) result = currentNumber;
    
    else {
        switch(currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
            case 4:
                result = result / currentNumber;
            default:
                break;
        }
    }
    
    currentNumber = 0;
    self.label.text = [NSString stringWithFormat:@"%6.0f", result];
    
    if ([sender tag] == 0) result = 0; {
        currentOperation = (int)[sender tag];
    }
}

- (IBAction)cancel:(id)sender {
    
    currentNumber = 0;
    self.label.text = @"0";
}

- (IBAction)digitPressed:(id)sender {
    currentNumber = currentNumber *10 +(float)[sender tag];
    self.label.text = [NSString stringWithFormat: @"%6.0f", currentNumber];
}
@end
