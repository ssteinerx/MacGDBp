/*
 * MacGDBp
 * Copyright (c) 2002 - 2007, Blue Static <http://www.bluestatic.org>
 * 
 * This program is free software; you can redistribute it and/or modify it under the terms of the GNU 
 * General Public License as published by the Free Software Foundation; either version 2 of the 
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without 
 * even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along with this program; if not, 
 * write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA
 */

#import "AppDelegate.h"
#import "ConnectWindowController.h"

@implementation AppDelegate

/**
 * When the application has finished loading, show the connection dialog
 */
- (void)applicationDidFinishLaunching: (NSNotification *)notif
{
	[self showConnectionWindow: self];
}

/**
 * Shows the connection window
 */
- (IBAction)showConnectionWindow: (id)sender
{
	[[[ConnectWindowController sharedController] window] makeKeyAndOrderFront: self];
}

@end