NormalParticle [] apt;
OddballParticle tit = new OddballParticle(400,400);


void setup()
{
	size(800,800);
	
	apt = new NormalParticle[150];
 	for (int i=0;i<150;i++){
 		apt[i]=new NormalParticle(400,400); 
 	}
 
}
void draw()
{
	background(0);
	for(int i=0;i<apt.length;i++){
 		apt[i].move();
 		apt[i].show();
 	}
 	tit.move();
 	tit.show();

 

}
class NormalParticle
{
	float myX, myY, mySpeed,myAngle;
	int myColor;
	NormalParticle(int x, int y)
	{
		myX = x;
		myY = y;
		myAngle = (float)(Math.random()*(2*Math.PI));
		mySpeed = (float)(Math.random()*7)-3;
		myColor = 15;

	}
	void move()
	{
		myX += Math.cos(myAngle)*(mySpeed);
		myY += Math.sin(myAngle)*(mySpeed);
		myAngle = myAngle + 0.01;
			
	}
	void show()
	{
		fill(255,0,0);
		ellipse(myX,myY,15,15);
	}
}
//interface Particle
{
	//Particle()
	{
	//	public void move();
	//	public void show();
	}
}
class OddballParticle //uses an interface
{
	float myX, myY, mySpeed,myAngle;
	int myColor;
	OddballParticle(int x, int y)
	{
		myX = x;
		myY = y;
		myAngle = (float)(Math.random()*(2*Math.PI));
		mySpeed = (float)(Math.random()*7)-3;
		myColor = 15;
	}
	void move()
	{
		myX += Math.cos(myAngle)*(mySpeed);
		myY += Math.cos(myAngle)*(mySpeed);
		myAngle = myAngle + 0.01;
	}
	void show()
	{
		fill(0,255,0);
		rect(myX,myY,30,30);
	}
}
class JumboParticle  //uses inheritance
{
	JumboParticle()
	{
	
	}
}

