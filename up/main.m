//
//  main.m
//  up
//
//  Created by g on 2/8/13.
//  Copyright (c) 2013 tekitronix. All rights reserved.
//

#import <Cocoa/Cocoa.h>

void down_key(CGKeyCode kcode)
{
    CGEventRef event = CGEventCreateKeyboardEvent(NULL, kcode, true);
    CGEventSetType(event, kCGEventKeyDown);
    CGEventPost(kCGSessionEventTap, event);
}

void up_key(CGKeyCode kcode)
{
    CGEventRef event = CGEventCreateKeyboardEvent(NULL, kcode, true);
    CGEventSetType(event, kCGEventKeyUp);
    CGEventPost(kCGSessionEventTap, event);
}

int main(int argc, char *argv[])
{
    CGKeyCode kUp = 126;
    CGKeyCode kCommand = 55;
    
    down_key(kCommand);
    down_key(kUp);
    up_key(  kUp);
    up_key(  kCommand);
}
