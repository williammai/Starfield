NormalParticle [] apt;

void setup()
{
	size(800,800);
	
	apt = new NormalParticle[100];
 	for (int i=0;i<100;i++){
 		apt[i]=new NormalParticle(400,400); 
 	}
}
void draw()
{
	for(int i=0;i<apt.length;i++){
 		apt[i].move();
 		apt[i].show();
 	}
}
class NormalParticle
{
	float myX, myY, mySpeed,myAngle;
	int myColor;
	NormalParticle(int x, int y,)
	{
		myX = x;
		myY = y;
		myAngle = 6;
		mySpeed = 6;

	}
	void move()
	{
		myX += (int)(Math.random()*7)-3;
		myY += (int)(Math.random()*7)-3;
	}
	void show()
	{
		fill(0,255,0);
		ellipse(myX,myY,20,20);
	}
}
interface Particle
{
	Particle()
	{
		public void move();
		public void show();
	}
}
class OddballParticle //uses an interface
{
	OddballParticle()
	{

	}
}
class JumboParticle //uses inheritance
{
	JumboParticle()
	{

	}
}

