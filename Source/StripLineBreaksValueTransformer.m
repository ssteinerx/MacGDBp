/*
 * MacGDBp
 * Copyright (c) 2011, Blue Static <http://www.bluestatic.org>
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

#import "StripLineBreaksValueTransformer.h"


@implementation StripLineBreaksValueTransformer

+ (Class)transformedValueClass
{
  return [NSString class];
}

- (id)transformedValue:(id)value
{
  if (![value isKindOfClass:[[self class] transformedValueClass]])
    return nil;

  NSString* string = value;
  string = [string stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  string = [string stringByReplacingOccurrencesOfString:@"\r" withString:@" "];
  string = [string stringByReplacingOccurrencesOfString:@"\t" withString:@" "];
  return string;
}

@end
