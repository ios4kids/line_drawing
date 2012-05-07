Line Drawing in ios with Line Objects
=====================================

This is a program that uses touch to detect the point to draw a line.

The line is drawn from one point touched in the screen to the next point touched in the screen.

Uses a Line class with a draw method in it.

Uses a lines array in the view to keep track of all the lines drawn.

In the view, the drawrect method iterates through the lines array and draws each line
whenever the setNeedsDisplay method is called after a touch


Further enhancements
--------------------

Since we have a handle on all the lines, we can enhance this program to select lines, delete lines, 
change their color, etc.



