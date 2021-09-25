float a;
float r;
float l;
boolean ifStart = true;
int scope = int(random(3));
void setup(){
  size(900, 900);
  background(255);
}
void draw(){
  
  if(ifStart){
    a = random(1,50);
    r = random(1,50);
    l = random(1,50);
    switch(scope){
      
      case 0: noFill();rect(width/2 - a/2, height/2 - a/2, a, a);break;
      case 1: noFill();ellipse(width/2, height/2, r, r);break;
      case 2: noFill();
              triangle(width/2, height/2 - l/sqrt(3), width/2 - l/2, height/2 + l/(2*sqrt(3)), width/2 + l/2, height/2 + l/(2*sqrt(3)));
              break;
    }
    ifStart = false;
    println("Have started yet?");
  }
  switch(scope){
    case 0://a rectangle before
      scope = 1;//draw an ellipse
      r = sqrt(2)*a/2;
      noFill();
      ellipse(width/2, height/2, r, r);
      break;
    case 1://an ellipse before
      if(random(1) > 0.5){
        scope = 2;//draw a triangle
        l = 2*sqrt(3)*r;
        noFill();
        triangle(width/2, height/2 - l/sqrt(3), width/2 - l/2, height/2 + l/(2*sqrt(3)), width/2 + l/2, height/2 + l/(2*sqrt(3)));}
      else{
        scope = 0;//draw a rectangle
        a = 2*r;
        noFill();
        rect(width/2 - a/2, height/2 - a/2, a, a);
       }
      break;
    case 2://a triangle before
      scope = 1;//draw an ellipse
      r = l/sqrt(3);
      noFill();
      ellipse(width/2, height/2, r, r);
      break; //<>//
  }
  if(a>width || r>width/2 || l>width){
    background(255);
    //fill(255);
    //noStroke();
    //rect(0, 0, width, height);
    ifStart = true;
  }
  //println(scope);
  delay(1000);
}
