//
//  Line_ViewController.m
//  line_drawing
//
//  Created by amorales on 5/7/12.
//

#import "Line_ViewController.h"

@implementation Line_ViewController
@synthesize line_view;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// start with a dummy point
    // because we need two touches to draw the first line
    _last_touch_point = CGPointMake(-1.0, -1.0);
}

- (void)viewDidUnload
{
    [self setLine_view:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

// here is where we trap for the touch began, and that is where we start from
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // the next two lines are needed to get the touch point
    UITouch *touch = [touches anyObject];
    CGPoint new_point = [touch locationInView:touch.view];
    
    // first time
    if(_last_touch_point.x < 0){
        _last_touch_point = new_point; //record the initial point, nothing to draw the first time
    }
    else {
        [self addNewLineFromPoint:_last_touch_point toPoint:new_point];
        [[self line_view] setNeedsDisplay]; //redraw the screen
        _last_touch_point = new_point; //now get ready for the next touch
    }
}

-(void) addNewLineFromPoint:(CGPoint)from_point toPoint:(CGPoint)to_point {
    Line_Line *new_line = [[Line_Line alloc] init];
    new_line.from_point = from_point;
    new_line.to_point = to_point;
    [[[self line_view] lines] addObject:new_line];
}

@end
