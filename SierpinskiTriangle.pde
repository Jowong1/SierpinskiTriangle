int l = 0;
int n = 0;
int num = 50;
int siz = 1000;
public void setup()
{
  size(1000,1000);
  frameRate(80);
}
public void draw()
{
  background(0);
  sierpinski(500,500,50);
}
public void mouseDragged()//optional
{
  l = l - 5;
  n = n + 4;
  siz= siz - 10;
}
public void sierpinski(int x, int y, int len) 
{
  rectMode(CENTER);
  rect(x, y, len, len);
  if(num < 0){
    
  }else{
    num = num - 4;
    sierpinski(x + len + l, y, len - 4 + n);
    
  }
}
