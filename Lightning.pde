int startX = 0;
int startY = 300;
int endX = 0;
int endY = 300;
void setup()
{
  size(600,600);
  strokeWeight(6);
  background(255, 255, 255);
}
void draw()
{
  stroke((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
  while(endX < 600)
  {
  endX = startX + (int) (Math.random() * 9);
  endY = startY + ((int) (Math.random() * 19) - 9);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  }
  if(endX < 1000){
  startX = 0;
  startY = 300;
  endX = 0;
  endY = 300;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 300;
  endX = 0;
  endY = 300;
}