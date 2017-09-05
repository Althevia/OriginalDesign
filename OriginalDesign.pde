int count = 0;
int o = 20;
boolean turtie = false;
import java.util.Random;
void setup()
{
  size(500,500);
  background(85,128,181);
  noStroke();
  fill(255, 240, 165);
  rect(0,400,500,100);
}
void draw()
{
  if (turtie == false)
  {
    turtie = true;
    Random rand3 = new Random();
    int turt = rand3.nextInt(400) + 1;
    turtle(turt);
  }
  while (count<20)
  {
    Random rand = new Random();
    int  x = rand.nextInt(500) + 1;
    Random rand2 = new Random();
    int  y = rand2.nextInt(450) + 1;
    x = x + 10;
    y = y + 10;
    bubble(x,y,o);
    count = count + 1;
  }
  while (count<40)
  {
    o = 70;
    Random rand4 = new Random();
    int  x = rand4.nextInt(500) + 1;
    Random rand5 = new Random();
    int  y = rand5.nextInt(450) + 1;
    x = x + 10;
    y = y + 10;
    bubble(x,y,o);
    count = count + 1;
  }
}

void bubble(int x, int y, int o)
{
  fill(178,212,255,o); 
  ellipse(x,y,50,50);
  fill(207, 226, 249,o);
  ellipse(x,y,40,40);
  fill(222, 234, 249,o);
  ellipse(x+10,y-10,15,15);
}
void turtle(int x)
{
  fill(70, 186, 101);
  ellipse(30+x,430,20,40);
  ellipse(80+x,430,20,40);
  ellipse(30+x,470,20,40);
  ellipse(80+x,470,20,40);
  ellipse(100+x,450,30,10);
  ellipse(x,450,45,30);
  fill(34, 147, 64);
  ellipse(50+x,450,100,50);
  fill(85,193, 114);
  ellipse(50+x,450,90,40);
}
