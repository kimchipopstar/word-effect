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

void myFuncion (NSString *a, NSInteger b){
    
    NSString *upInputString = [a uppercaseString];
    
    NSString *lowInputString = [a lowercaseString];
    
    NSInteger strToNum = [a integerValue];
    
    NSString *addEh = [a stringByAppendingString:@"eh?"];
    
    NSString *lastCharacter = [a substringFromIndex: [a length] - 1];
    
    
    NSString *deSpace = [a stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    
    
    switch (b) {
        case uppercase:
            
            NSLog(@"Make it louder: %@",upInputString);
            break;
            
        case lowercase:
            
            NSLog(@"Make it more quiet: %@",lowInputString);
            break;
            
        case numberize:
            
            NSLog(@"The number you put in is: %ld",(long)strToNum);
            break;
            
        case canadianize:
            
            NSLog(@"Canadianize: %@",addEh);
            
        case respond:
            
            if ([lastCharacter  isEqual: @"!"]) {
                NSLog(@"whoa calm down!");
            }
            
            if ([lastCharacter isEqualToString:@"?"]){
                NSLog(@"I don't know");
            }
            
            break;
            
        case despaceit:
            
            NSLog(@"no spaces: %@",deSpace);
            
        default:
            break;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // pirint menu with numbers assigned to each option
        
        // ask user to input a string
        BOOL infinite = YES;
        
        while (infinite) {
        
        char inputChars[255];
        
        printf("input a String: ");
        fgets(inputChars, 255, stdin);
        strtok(inputChars, "\n");
        printf("Your string is %s\n", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was: %@", inputString);
        
        
        
        // ask the user to input another string
        
        // convert string to int just like with the nuberize case
        
        printf("---operation menu---\n0.uppercase\n1.lowercase\n2.numberize\n3.canadianize\n4.respond\n5.de-space-it\n");
        
        char inputOperation[255];
        
        printf("input a number");
        
        fgets(inputOperation, 255, stdin);
        
        printf("your operation is %s\n", inputOperation);
        
        NSString *inputOpString = [NSString stringWithUTF8String:inputOperation];
        
        NSLog(@"string Number was %@", inputOpString);
        
    
        NSInteger strToNum = [inputOpString integerValue];
        
        
        
        
        // passs the inputed string and convert number to your function
        myFuncion(inputString, strToNum);
        }
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
