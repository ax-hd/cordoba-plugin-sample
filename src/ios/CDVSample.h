//
//  CDVSample.h
//  SamplePluginNative
//
//  Created by Akshay Shinde on 4/20/16.
//  Copyright © 2016 Dents. All rights reserved.
//

/********* CDVSample.h Cordova Plugin Header *******/

#import <Cordova/CDVPlugin.h>

@interface CDVSample : CDVPlugin

- (void)echo:(CDVInvokedUrlCommand*)command;

@end
