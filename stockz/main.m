//
//  main.m
//  stockz
//
//  Created by David Ruiz on 14/04/2016.
//  Copyright © 2016 David Ruiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        NSMutableDictionary *stock = [NSMutableDictionary dictionary];
        [stock setObject:@"APPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];
//
        [stocks writeToFile:@"/Users/davidruiz/Documents" atomically:YES];
//
        NSArray *stocklist = [NSArray arrayWithContentsOfFile:@"/Users/davidruiz/Documents"];
//
        for (NSDictionary *d in stocklist){
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"],[d objectForKey:@"symbol"]);

        }
    }
    
        
    
    return 0;
}
