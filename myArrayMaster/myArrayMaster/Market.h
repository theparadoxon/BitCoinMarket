//
//  Market.h
//  ArrayPage
//
//  Created by Stephan Lippert on 16.06.13.
//  Copyright (c) 2013 Stephan Lippert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Market : NSObject{
    
    
    NSString *boerse;
    NSString *waehrung;
    double kurs;
    


}


-(NSString *)getboerse;
-(NSString *)getwaehrung;
-(double) getkurs;

-(void) setBoerse:(NSString *) aBoerse;
-(void) setWaehrung:(NSString *) aWaehrung;
-(void) setKurs:(double) aKurs;






@end
