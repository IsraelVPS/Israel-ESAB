//
//  adcViewController.h
//  assistenteDeConta
//
//  Created by ale on 13/11/13.
//  Copyright (c) 2013 DevMedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface adcViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputTxt;
@property (weak, nonatomic) IBOutlet UISlider *slider; //(0)
@property (weak, nonatomic) IBOutlet UILabel *labelGorjeta; //(1)
@property (weak, nonatomic) IBOutlet UITextField *valorGorjeta; //(2)
@property (weak, nonatomic) IBOutlet UITextField *valorTotal; //(3)
@property (weak, nonatomic) IBOutlet UITextField *numPagantes; //(4)
@property (weak, nonatomic) IBOutlet UIStepper *stepper; //(5)
@property (weak, nonatomic) IBOutlet UITextField *valorPagantes; //(6)

- (IBAction)sliderMudou:(id)sender;
- (IBAction)stepperMudou:(id)sender;
- (IBAction)fimDeInput:(id)sender;

- (void)atualizaResultados;

@end


