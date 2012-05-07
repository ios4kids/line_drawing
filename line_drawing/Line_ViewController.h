//
//  Line_ViewController.h
//  line_drawing
//
//  Created by amorales on 5/7/12.
//  
//  Object oriented line drawing
//
//  In this program we will have an array that will hold the lines that are drawn
//  The view will contain the array to hold the lines
//  Then controller will instantiate a new line, for every touch received
//  The line will start from the previous touch to the new touch point
//

#import <UIKit/UIKit.h>
#import "Line_View.h"
#import "Line_Line.h"

@interface Line_ViewController : UIViewController {
  CGPoint _last_touch_point;
}

// this is the connection between the view and this controller
// we will need this line_view variable to add lines to the array
// contained in the view
@property (strong, nonatomic) IBOutlet Line_View *line_view;

-(void) addNewLineFromPoint:(CGPoint)from_point toPoint: (CGPoint) to_point;

@end
