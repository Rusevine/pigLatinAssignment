//
//  NSString+PigLatin.m
//  pigLatin
//
//  Created by Wiljay Flores on 2018-08-04.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *)stringByPigLatinization:(NSString*)string{
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
    NSArray *words = [string componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSString *letterHolder = [[NSString alloc] init];
    NSString *suffixHolder = [[NSString alloc] init];
    NSString *prefixHolder = [[NSString alloc] init];
    
    NSMutableArray *pigLatin = [[NSMutableArray alloc] init];
 
    
    for (NSString *word in words) {

        
    NSMutableArray *suffix = [[NSMutableArray alloc] init];
    int substring = 0;

        for(NSUInteger i = 0; i < [word length]; i++){
            char letter = [word characterAtIndex:i];
           
            if([vowels characterIsMember:letter]){
                [suffix addObject:@"ay"];
                break;
            }
            letterHolder = [NSString stringWithFormat:@"%c",letter];
            [suffix addObject:letterHolder];
            substring++;
        }

        suffixHolder = [[suffix valueForKey:@"description"] componentsJoinedByString:@""];
        prefixHolder = [word substringFromIndex:substring];
    
        
        [pigLatin addObject:[NSString stringWithFormat:@"%@%@",prefixHolder,suffixHolder]];
        
    }
    return [[pigLatin valueForKey:@"description"] componentsJoinedByString:@" "];
}

@end
