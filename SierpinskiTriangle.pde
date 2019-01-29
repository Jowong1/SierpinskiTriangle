
public void setup()
{
  
}
public void draw()
{
  sierpinski(1,2,3);
}
public void mouseDragged()//optional
{
  
}
public void sierpinski(int x, int y, int len) 
{
  rectMode(CENTER);
  rect(x, y, len, len);
  if(len > 0){
    sierpinski(x+5, y+5, len + 5);
  }
}
