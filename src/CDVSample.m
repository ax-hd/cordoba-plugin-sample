//
//  CDVSample.m
//  SamplePluginNative
//
//  Created by Akshay Shinde on 4/20/16.
//  Copyright © 2016 Dents. All rights reserved.
//

/********* CDVSample.m Cordova Plugin Implementation *******/

#import "CDVSample.h"
#import <Cordova/CDVPlugin.h>

@implementation CDVSample

- (void)echo:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    
    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
