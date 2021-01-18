void setup() {
    size(600, 600);
    background(240);
}
    

var house = 100;
var windowColor = color(128, 198, 229);
var cloud1X = 50;
var cloud2X = 400;
var cloudMove = 0.5;
var cloud1 = function(cloud1X) {
    var cloud1 = 50;
    fill(255, 255, 255);
    ellipse(cloud1X, cloud1-30, cloud1, cloud1-10);
    ellipse(cloud1X-20, cloud1-30, cloud1+10, cloud1);
    ellipse(cloud1X+50, cloud1-30, cloud1+70, cloud1+10);
};
var cloud2 = function(cloud2X) {
    var cloud = 60;
    ellipse(cloud2X+50, cloud-10, cloud, cloud-10);
    ellipse(cloud2X+150, cloud-10, cloud+10, cloud);
    ellipse(cloud2X+100, cloud-10, cloud+70, cloud+10);

};
    var sunSize = 60;
    var sunGrow = 0.5;
    var sun = function(sunSize, sunSize) {
    fill(252, 212, 64);
    ellipse(300, 30, sunSize, sunSize);
    };

var window = function(windowX1, windowY1, windowX2, windowY2) {
    fill(windowColor);
    rect(windowX1, windowY1, windowX2, windowY2);
};

// draw flower
var Flower = function(x, y, height) {
    this.x = x;
    this.y = y;
    this.height = height;
};
//tulip
var Tulip = function (x, y, height) {
    Flower.call(this, x, y, height);
};
Flower.prototype.growBy = function(mount) {
    this.height += mount;
};
Tulip.prototype = Object.create(Flower.prototype);

Tulip.prototype.draw = function() {
    noStroke();
    //branch
    fill(16, 122, 12);
    rect(this.x+2, this.y, 10, -this.height);
    //petals
    fill(255, 0, 0);
    ellipse(this.x+10, this.y-this.height, 45, 45);
    triangle(this.x-10, this.y-this.height, this.x-20, this.y-this.height-50, this.x+15, this.y-this.height);
    triangle(this.x-10, this.y-this.height, this.x+10, this.y-this.height-60, this.x+20, this.y-this.height);
    triangle(this.x, this.y-this.height, this.x+35, this.y-this.height-50, this.x+29, this.y-this.height);
};

// Sunflower
var Sunflower = function (x, y, height) {
    Flower.call(this, x, y, height);
};
Sunflower.prototype = Object.create(Flower.prototype);

Sunflower.prototype.draw = function() {
    noStroke();
    //stem
    fill(16, 122, 12);
    rect(this.x+53, this.y, 10, -this.height);
    //petals
    fill(250, 228, 61);
    ellipse(this.x+35, this.y-this.height, 25, 25);
    ellipse(this.x+45, this.y-this.height-20, 25, 25);
    ellipse(this.x+70, this.y-this.height-17, 25, 25);
    ellipse(this.x+75, this.y-this.height+7, 25, 25);
    ellipse(this.x+53, this.y-this.height+16, 25, 25);
    //pollen
    fill(153, 102, 0);
    ellipse(this.x+55, this.y-this.height, 30, 30);

};
// Rose
var Rose = function (x, y, height) {
    Flower.call(this, x, y, height);
};
Rose.prototype = Object.create(Flower.prototype);

Rose.prototype.draw = function() {
    stroke(255, 255, 255);
    //stem
    fill(16, 122, 12);
    rect(this.x+53, this.y, 3, -this.height);
    //petals
    fill(255, 0, 127);
    ellipse(this.x+38, this.y-this.height+15, 25, 25);
    ellipse(this.x+45, this.y-this.height-3, 25, 25);
    ellipse(this.x+59, this.y-this.height-8, 25, 25);
    ellipse(this.x+70, this.y-this.height+10, 25, 25);
    ellipse(this.x+55, this.y-this.height+25, 25, 25);
    fill(255, 255, 255);
    ellipse(this.x+53, this.y-this.height+10, 20, 20);
};
var PurpleFlw = function(x, y, height) {
    Flower.call(this, x, y, height);
};
PurpleFlw.prototype = Object.create(Flower.prototype);
PurpleFlw.prototype.draw = function() {
    stroke(255, 255, 255);
    //stem
    fill(238, 130, 238);
    rect(this.x+53, this.y, 3, -this.height);
    //petals
    fill(238, 130, 238);
    ellipse(this.x+38, this.y-this.height+15, 25, 25);
    ellipse(this.x+45, this.y-this.height-3, 25, 25);
    ellipse(this.x+59, this.y-this.height-8, 25, 25);
    ellipse(this.x+70, this.y-this.height+10, 25, 25);
    ellipse(this.x+55, this.y-this.height+25, 25, 25);
    fill(255, 255, 255);
    ellipse(this.x+53, this.y-this.height+10, 20, 20);
};
var BlueFlw = function(x, y, height) {
    Flower.call(this, x, y, height);
};
BlueFlw.prototype = Object.create(Flower.prototype);
BlueFlw.prototype.draw = function() {
    stroke(255, 255, 255);
    //stem
    fill(16, 122, 12);
    rect(this.x+53, this.y, 3, -this.height);
    //petals
    fill(102, 219, 255);
    ellipse(this.x+38, this.y-this.height+15, 25, 25);
    ellipse(this.x+45, this.y-this.height-3, 25, 25);
    ellipse(this.x+59, this.y-this.height-8, 25, 25);
    ellipse(this.x+70, this.y-this.height+10, 25, 25);
    ellipse(this.x+55, this.y-this.height+25, 25, 25);
    fill(255, 255, 255);
    ellipse(this.x+53, this.y-this.height+10, 20, 20);
};
var Grass = function(x, y, height) {
    Flower.call(this, x, y, height);
};

var tulip = new Tulip(random(10, 100), random(300, 550), random(50, 200));
var tulip1 = new Tulip(random(250, 500), random(300, 550), random(50, 100));
var tulip2 = new Tulip(random(250, 400), random(300, 550), random(50, 150));
var sunflower = new Sunflower(random(10, 100), random(400, 600), random(30, 80));
var sunflower1 = new Sunflower(random(10, 100), random(400, 600), random(30, 80));
var sunflower2 = new Sunflower(random(380, 500), random(300, 550), random(30, 80));
var rose = new Rose(random(10, 100), random(300, 550), random(100, 100));
var rose1 = new Rose(random(300, 550), random(300, 550), random(20, 100));
var rose2 = new Rose(random(300, 500), random(300, 550), random(50, 100));
var rose3 = new Rose(random(10, 100), random(300, 550), random(50, 80));
var rose4 = new Rose(random(10, 100), random(300, 550), random(50, 80));
var purpleFlw = new PurpleFlw(random(10, 100), random(300, 550), random(20, 80));
var purpleFlw1 = new PurpleFlw(random(10, 100), random(400, 500), random(20, 80));
var blueFlw = new BlueFlw(random(250, 450), random(300, 500), random(50, 80));
var blueFlw1 = new BlueFlw(random(250, 450), random(400, 600), random(50, 80));

var drawFlowers = function() {
    tulip.draw();
    tulip1.draw();
    tulip2.draw();
    sunflower.draw();
    sunflower1.draw();
    sunflower2.draw();
    rose.draw();
    rose1.draw();
    rose2.draw();
    rose3.draw();
    rose4.draw();
    purpleFlw.draw();
    purpleFlw1.draw();
    blueFlw.draw();
    blueFlw1.draw();
    
};
void draw() {
background(215, 255, 200);
noStroke();

/*Grass.prototype = Object.create(Flower.prototype); 
Grass.prototype.draw = function() {    
    noStroke();
    fill(16, 280, 56);
    triangle(this.x*3.5, this.y-this.height, this.x*2.9, this.y-this.height+55, this.x*3.5, this.y-this.height+55);
    triangle(this.x*2.5, this.y-this.height-1, this.x*3.2, this.y-this.height+55, this.x*2.5, this.y-this.height+55);
    triangle(this.x*1.6, this.y-this.height, this.x*2.8, this.y-this.height+55, this.x*2, this.y-this.height+55);
};
var grass = new Grass (10, 500, 55);
var drawGrass = function() {
    grass.draw();
};*/

// draw cloud
     cloud1(cloud1X);
     if (cloud1X > 350) {
        cloudMove = -0.5;
     }
     if (cloud1X < 35) {
         cloudMove = 0.5;
     };
     cloud1X = cloud1X + cloudMove;

     cloud2(cloud2X);
    if (cloud2X < 200) {
        cloudMove = 0.5;
     }
     if (cloud2X > 500) {
         cloudMove = -0.5;
     }
     cloud2X = cloud2X + cloudMove;

// draw Sun

    sun(sunSize, sunSize);
    if(sunSize < 60) {
        sunGrow = 0.5;
    }
    if(sunSize > 80) {
        sunGrow = -0.5;
    }
    sunSize = sunSize + sunGrow;

//draw house
    fill(5, 113, 176);
    rect(house*1.6, house*1.3, 30, 20);
    quad(house, house*2, house*1.4, house*1.5, house*3.2, house*1.5, house*3.6, house*2); // house roof

    fill(226, 214, 207);
    rect(house*1.2, house*2, house*2.2, house*1.8); // house body

    fill(62, 74, 88);
    rect(house*2, house*2.9, house*0.6, house*0.9); // door
    fill(131, 100, 72);
    ellipse(house*2.1, house*3.4, house/5, house/20); // handle

// draw window
    fill(255, 255, 255);
    stroke(35, 35, 35);
    rect(200, 200, 70, 25); // top window white   
    rect(125, 270, 70, 50); // left window white
    rect(265, 270, 70, 50); // right window white

    window(203, 202, 30, 20); // top window  
    window(236, 202, 30, 20);

    window(128, 275, 20, 40); // left window
    window(150, 275, 20, 40);
    window(172, 275, 20, 40);

    window(268, 275, 20, 40); // right window 
    window(290, 275, 20, 40);
    window(312, 275, 20, 40);


 mouseClicked = function() {
    tulip.growBy(random(0,10));
    tulip1.growBy(random(5,20));
    tulip2.growBy(random(5,10));
    sunflower.growBy(random(10,30));
    sunflower1.growBy(random(0,15));
    sunflower2.growBy(random(8,15));
    rose.growBy(random(5,20));
    rose1.growBy(random(10,30));
    rose2.growBy(random(1,18));
    rose3.growBy(random(6,25));
    rose4.growBy(random(10,10));
    purpleFlw.growBy(random(10,10));
    purpleFlw1.growBy(random(10,10));
    blueFlw.growBy(random(10, 20));
    blueFlw1.growBy(random(10, 20));
};

var drawGrass =function(x) {    
    noStroke();
    fill(16, 280, 56);
    triangle(x, 445, x-6, 600, x, 600);
    triangle(x-10, 445, x-3, 600, x-10, 600);
    triangle(x-19, 445, x-7, 600, x-15, 600);
};

drawFlowers();

for(var i = 0; i < 100; i += 1.1) {
 drawGrass([i*10]);
};


}
 