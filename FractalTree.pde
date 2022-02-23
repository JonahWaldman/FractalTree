double fractionLength = .8; 
int smallestBranch = 10; 
double branchAngle = .6; 

public void setup() 
{   
  size(640, 480);    
  noLoop();
}
public void draw() 
{   
  background(0);   
  stroke((int)Math.random()*256, (float)Math.random()*256,255);   
  line(320, 480, 320, 380);   
  drawBranches(320, 380, 200, 3*Math.PI/2);
} 
public void drawBranches(int x, int y, double branchLength, double angle) { 
  double angle1 = angle + branchAngle;  
  double angle2 = angle - branchAngle;  
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x+Math.random()*4);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x+Math.random()*4);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  
  line(x, y, endX1, endY1);  
  line(x, y, endX2, endY2);  
  if (branchLength>smallestBranch) {
    drawBranches(endX1, endY1, branchLength/1.5, angle+(double)Math.random()*2-1);
    drawBranches(endX1, endY1, branchLength/3, angle+(double)Math.random()*2-1);
    drawBranches(endX2, endY2, branchLength/1.5, angle+(double)Math.random()*2-1);
    drawBranches(endX2, endY2, branchLength/3, angle+(double)Math.random()*2-1);
    drawBranches(endX2, endY2, branchLength/1.1, angle+(double)Math.random()*2-1);
    drawBranches(endX2, endY2, branchLength/1.1, angle+(double)Math.random()*2-1);
  }
}
public void mousePressed()
{
  fill((int)Math.random()*2-1,(int)Math.random()*2-1,(int)Math.random()*2-1);
  redraw();
  
  }
