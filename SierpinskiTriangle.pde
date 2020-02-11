public void setup()
{
  size(500,500);
}
public void draw()
{
  sierpinski(0,500,350);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len<=450){
    int x2 = x+len;
    int x3 = len/2;
    int y3 = y-len;
    triangle(x, y, x2, y, x3, y3);
  }
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);
}
