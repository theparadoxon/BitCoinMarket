//
//  Market.m
//  ArrayPage
//
//  Created by Stephan Lippert on 16.06.13.
//  Copyright (c) 2013 Stephan Lippert. All rights reserved.
//

#import "Market.h"

@implementation Market

-(NSString *) getboerse
{
    return boerse;
}

-(NSString *) getwaehrung
{
    return waehrung;
}

-(double) getkurs
{
    return kurs;
}

-(void) setBoerse:(NSString *) aBoerse
{
    boerse = aBoerse;
}

-(void) setWaehrung:(NSString *) aWaehrung
{
    waehrung = aWaehrung;
}

-(void) setKurs:(double) aKurs
{
    kurs = aKurs;
}





@end
