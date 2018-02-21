private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = 1;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0); 

  stroke((int)(Math.random()*255),255,(int)(Math.random()*255));   

  line(320,480,320,280);   
  drawBranches(320,280,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1=angle+branchAngle;
  double angle2=angle-branchAngle;
  double angle3=angle+branchAngle/2;
  double angle4=angle-branchAngle/2;
  branchLength=branchLength*fractionLength;
  int endx1= (int) (branchLength*Math.cos(angle1)+x);
  int endy1= (int) (branchLength*Math.sin(angle1)+y);
  int endx2= (int) (x+branchLength*Math.cos(angle2));
  int endy2= (int) (y+branchLength*Math.sin(angle2));
  int endx3= (int) ((branchLength*Math.cos(angle3))+x);
  int endy3= (int) ((branchLength*Math.sin(angle3))+y);
  int endx4= (int) (x+(branchLength*Math.cos(angle4)));
  int endy4= (int) (y+(branchLength*Math.sin(angle4)));
  line(x,y,endx1,endy1);
  line(x,y,endx2,endy2);
  line(x,y,endx3,endy3);
  line(x,y,endx4,endy4);
  if(branchLength>smallestBranch){
    stroke((int)(Math.random()*255),255,(int)(Math.random()*255)); 
  drawBranches(endx1,endy1,branchLength*fractionLength,angle1);
  drawBranches(endx2,endy2,branchLength*fractionLength,angle2);
  drawBranches(endx3,endy3,branchLength*fractionLength,angle3);
  drawBranches(endx4,endy4,branchLength*fractionLength,angle4);
  }
  //your code here    
} 
