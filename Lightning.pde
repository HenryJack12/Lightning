int startX = 0;
int startY = 300;
int endX = 0;
int endY = 300;
int colorW = 255;
void setup()
{
  size(600,600);
  strokeWeight(6);
  background(colorW, colorW, colorW);
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
if(colorW == 255) {
  while(colorW > 0){
    colorW = colorW - 1;
    background(colorW, colorW, colorW);
  }
} else if(colorW == 0){
    while(colorW < 255){
      colorW = colorW + 1;
      background(colorW, colorW, colorW);
    }
  }
}