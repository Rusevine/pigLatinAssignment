//
//  main.m
//  pigLatin
//
//  Created by Wiljay Flores on 2018-08-04.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSString *sentence = [InputHandler userInputandParse];
        
        sentence = [sentence stringByPigLatinization:sentence];
        
        NSLog(@"%@",sentence);
        
    }
    return 0;
}
