//
//  adcViewController.m
//  assistenteDeConta
//
//  Created by ale on 13/11/13.
//  Copyright (c) 2013 DevMedia. All rights reserved.
//

#import "adcViewController.h"

@interface adcViewController ()

@end

@implementation adcViewController

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

- (IBAction)sliderMudou:(id)sender {
    NSString *strGorjeta =
        [NSString stringWithFormat:@"%.0f", self.slider.value];
    self.labelGorjeta.text = strGorjeta;
    [self atualizaResultados];
    
}

- (IBAction)stepperMudou:(id)sender {
    self.numPagantes.text =
        [NSString stringWithFormat:@"%.0f", self.stepper.value];
    [self atualizaResultados];
}

- (IBAction)fimDeInput:(id)sender {
    [self.inputTxt resignFirstResponder];
    [self atualizaResultados];
}

- (void) atualizaResultados {
    float gorjeta, conta, contaPorPessoa;
    conta = [self.inputTxt.text floatValue];
    gorjeta = [self.labelGorjeta.text floatValue] * conta / 100;
    self.valorGorjeta.text = [NSString stringWithFormat:@"%.2f", gorjeta];
    
    conta = conta + gorjeta;
    self.valorTotal.text = [NSString stringWithFormat:@"%.2f", conta];
    
    contaPorPessoa = conta / [self.numPagantes.text floatValue];
    self.valorPagantes.text = [NSString stringWithFormat:@"%.2f", contaPorPessoa];
}

@end
