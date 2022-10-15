//
//  ViewController.h
//  Calculator
//
//  Created by André Almeida on 2022-10-14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)digitPressed:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)operationPressed:(id)sender;

@end

