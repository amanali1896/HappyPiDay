float r=200;

int total=0;
int circle=0;

void setup(){ /*This represents the basic setup*/
  size(500,500);/*The size of the canvas*/
  background(0);
  translate(width/2,height/2);/*Translation of axes to the center*/


  stroke(255);/*the margin of the stroke*/
  strokeWeight(4);
  noFill();/*empty canvas*/
  ellipse(0,0,r*2,r*2);/*Circle diagram*/
  rectMode(CENTER);/*Rectangle is center*/
  rect(0,0,r*2,r*2);/*Image of the rectangle*/
}


void draw(){

translate(width/2,height/2);
float pie=0;
for(int i=0;i<=1000;i++){
float x = random(-r,r);/* random number generated from -r to r */
float y = random(-r,r);
total++;
float d = sqrt(x*x + y*y);

if(d<r){
  stroke(255,0,0);
  circle++;
}
else{
  stroke(0,255,0);
}

 pie = 4* float(circle)/  total;

point(x, y);
}

println(pie);

//point(x, y);

}
