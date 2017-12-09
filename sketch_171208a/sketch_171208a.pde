class Kvadrat
{
  float x, y, s;
  Kvadrat(float _x, float _y, float _s)
  {
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }


  void right(float _s)
  {
    this.x+=_s;
  }
}

class rect extends Kvadrat
{
  color ca; 
  rect(float _x, float _y, float _s, color _ca)
  {
    super(_x, _y, _s);
    this.ca = _ca;
  }

  void draw()
  {
    rect(this.x, this.y, this.s, this.s);
    fill(this.ca);
  }
}

rect[] nasled;

void setup()
{
  size(600, 600);

  nasled = new rect[20];
  for (int i=0; i<20; i++)
  {
    nasled[i] = new rect(random(width), random(height), 80, int(random(#000000, #FFD700)));
  }
}

void draw()
{
  background(120, 60, 80);
  for (int i=0; i<20; i++)
  {
    nasled[i].draw();
    nasled[i].right(random(8));
  }
}