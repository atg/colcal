//
//  main.m
//  colcal
//
//  Created by Alex Gordon on 25/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

double parsestr(const char* str) {
    return [[NSString stringWithUTF8String:str] doubleValue];
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSColor* c = [[NSColor colorWithDeviceRed:parsestr(argv[1]) green:parsestr(argv[2]) blue:parsestr(argv[3]) alpha:1.0] colorUsingColorSpace:[NSColorSpace genericRGBColorSpace]];
        
        printf("[NSColor colorWithCalibratedRed:%.3f green:%.3f blue:%.3f alpha:1.0]\n", [c redComponent], [c greenComponent], [c blueComponent]);        
    }
    return 0;
}

