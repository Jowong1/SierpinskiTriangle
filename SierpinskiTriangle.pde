int change = 300;
boolean mouse = false;
public void setup()
{
  size(1000,1000);
  background(0);
  
  //noFill();
}
public void draw()
{
  sierpinski(500 - (int)(change/2) , (int)(change/2), change);
  if(mouse == true){
    //if(change%100 == 0){
      //change = change + 2;
    //}else{
    change++;//change =change+ (int)(change* 0.005); // Interesting thing happens when you multiply change by a number(change = change * 0.5)
    //fill(255,255,255, 1);
    //rect(0,0,1000,1000);
    //}
    if(change%2 == 0){
      noStroke();
      change = change + 2;
    }else{
      stroke(1);
    }
  }
}
public void mouseClicked()//optional
{
  mouse = true;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){//Math.sqrt(change)){ //50 looks nice
  fill(255);
    triangle(x, y, x + len, y, x + (int)(len/2), y - len);
  }else{
    sierpinski(x, y, (int)(len/2));
    sierpinski(x + (int)(len/2), y, (int)(len/2));
    sierpinski(x + (int)(len/4), y - (int)(len/2), (int)(len/2));
  }
}
