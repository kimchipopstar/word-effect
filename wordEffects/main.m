//
//  main.m
//  wordEffects
//
//  Created by Jaewon Kim on 2017-07-24.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];
        
        printf("input a String: ");
        
        fgets(inputChars, 255, stdin);
        
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"Input was: %@", inputString);
        
        NSString *upInputString = [inputString uppercaseString];
        
        NSLog(@"Make it louder: %@",upInputString);
        
        NSString *lowInputString = [inputString lowercaseString];
        
        NSLog(@"Make it more quiet: %@",lowInputString);
        
        NSNumber *convertNumber = inputString;
        
        NSLog(@"The number you put in is: %@",convertNumber);
        
        NSString *addEh = [inputString stringByAppendingString:@"eh?"];
        
        NSLog(@"Canadianize: %@",addEh);
        
        
    }
    return 0;
}
