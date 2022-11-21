
void setup() {
	size(800,800);
	smooth();
}

void draw() {
	background(255);
	drawFigure(width/2,height/1.8,mouseX/1.5);
}

void drawFigure(float x, float y, float radius) {
	stroke(0);
	noFill();
	drawTriangle(x, y, radius);

	if(radius > 2) {
						//drawCircle() calls itself twice, creating a
						//branching effect. For every circle, a
						//smaller circle is drawn to the left and the
						//right.
		drawFigure(x, y - radius/2, radius/2);
		drawFigure(x - 0.8660254038 * (radius/2), y + radius/4, radius/2);
    drawFigure(x + 0.8660254038 * (radius/2), y + radius/4, radius/2);
	}
}

void drawTriangle(float a, float b, float r) {
    triangle(a, b - r, a - 0.8660254038 * r, b + 0.5 * r,  a + 0.8660254038 * r, b + 0.5 * r);
}
