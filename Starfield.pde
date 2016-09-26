NormalParticle weirdo = new NormalParticle();
void setup()
{
	size(800,800);
}
void draw()
{
	weirdo.move();
	weirdo.show();
}
class NormalParticle
{
	double myX, myY, mySpeed,myAngle;
	int myColor;
	NormalParticle()
	{

	}
	void move()
	{

	}
	void show()
	{

	}
}
interface Particle
{
	Particle()
	{

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

