//
//  main.m
//  wordEffects
//
//  Created by Jaewon Kim on 2017-07-24.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

enum operation {

    uppercase,
    lowercase,
    numberize,
    canadianize,
    respond,
    despaceit

};

void myFuncion (NSString *a, enum operation b){
    
    NSString *upInputString = [a uppercaseString];
    
    NSString *lowInputString = [a lowercaseString];
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *myNumber = [f numberFromString:a];
    
    NSString *addEh = [a stringByAppendingString:@"eh?"];

    
    
    NSString *deSpace = [a stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    
    
    switch (b) {
        case uppercase:
            
            NSLog(@"Make it louder: %@",upInputString);
            break;
            
        case lowercase:
            
            NSLog(@"Make it more quiet: %@",lowInputString);
            break;
            
        case numberize:
            
            NSLog(@"The number you put in is: %@",myNumber);
            
        case canadianize:
            
            NSLog(@"Canadianize: %@",addEh);
            
        case respond:
            
            NSLog(<#NSString * _Nonnull format, ...#>);
            
            break;
            
        case despaceit:
            
            NSLog(@"no spaces: %@",deSpace);
            
        default:
            break;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];
        
        printf("input a String: ");
        
        fgets(inputChars, 255, stdin);
        
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"Input was: %@", inputString);
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
