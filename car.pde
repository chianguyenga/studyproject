noStroke();
var redColor = color(224, 69, 15);
var blueColor = color(69, 69, 115);
var yellowColor = color(255, 255, 35);
var whiteColor = color(255, 255, 255);
var greenColor = color(144, 238, 144);
var greyColor = color(106, 106, 106);
var x1 = 20;
var y1;
var x2 = 20;
var y2;
var x3 = 20;
var y3;

var speed = random(0,6);
if (speed <= 1) {
  y1 = 70;
  y2 = 140;
  y3 = 240;
} else if(speed <= 2) {
  y1 = 50;
  y3 = 140;
  y2 = 240;
} else if(speed <= 3) {
  y2 = 70;
  y3 = 140;
  y1 = 240;
} else if(speed <= 4) {
  y3 = 70;
  y1 = 140;
  y2 = 240;
} else if(speed <= 5) {
  y3 = 70;
  y2 = 140;
  y1 = 240;
} else {
  y2 = 70;
  y1 = 140;
  y3 = 240;
}


var rock1X = random(200, 900);
var rock1Y = random(120, 320);
var rock2X = random(150, 1000);
var rock2Y = random(150, 320);

bool redCarLost = false;
bool blueCarLost = false;
bool yellowCarLost = false;

void setup () {
 size(1200,400);
 background(125);
}
bool Win = function(){
  if((x1+50) >= 1100 || (x2+50) >= 1100 || (x3+50) >= 1100) {
    return true;
  } else {
    return false;
  }
}

var drawBackground = function() {
    background(184, 236, 255);
    // Draw cloud
    var cloud = 50;

    fill(255, 255, 255);
    ellipse(cloud-10, cloud-30, cloud, cloud-10);
    ellipse(cloud+100, cloud-30, cloud+10, cloud);
    ellipse(cloud*2, cloud-30, cloud+70, cloud+10);

    ellipse(cloud+500, cloud-10, cloud, cloud-10);
    ellipse(cloud+600, cloud-10, cloud+10, cloud);
    ellipse(cloud*12, cloud-10, cloud+70, cloud+10);

    // Draw a Sun
    fill(252, 212, 64);
    ellipse(300, 30, 60, 60);
    // Draw road
    stroke(255, 255, 255);
    fill(128, 128, 128);
    rect(0, 100, 1200, 80);
    rect(0, 180, 1200, 80);
    rect(0, 260, 1200, 80);
    // Draw grass
    noStroke();
    fill(0, 154, 23);
    ellipse(600, 400, 1200, 100);

    // Start line
    fill(255, 255, 255);
    rect(60, 100, 20, 240);

    // Stop line
    fill(255, 255, 255);
    rect(1100, 100, 20, 240);

  };

  // Crash test
  var crash = function(l1, r1, t1, b1, l2, r2, t2, b2) {
  if ((r1 > l2) && (r1 < r2)){
    if ((t1 > t2) && (t1 < b2)) {
    fill(greyColor);
    ellipse(r1, t1+20, 60, 50);
    return true;
    }
  };
  if ((l1 > l2) && (l1 < r2)){
    if ((b1 > t2) && (b1 < b2)) {
      fill(greyColor);
      ellipse(r1, t1+20, 60, 50);
      return true;
    }
  };
  if ((r1 > l2) && (r1 < r2)) {
    if ((t1 > t2) && (t1 < b2)) {
      fill(greyColor);
      ellipse(r1, t1+20, 60, 50);
      return true;
    }
  };
  if ((r1 > l2) && (r1 < r2)) {
    if ((b1 > t2) && (b1 < b2)) {
      fill(greyColor);
      ellipse(r1, t1+20, 60, 50);
      return true;
    }
  }
    return false;

}
// Draw cars
var drawCars = function(x, y, color, wheelColor){

  // car's body
  fill(color);
  rect(x, y+40, 50, 30);
  rect(x-10, y+60, 70, 20);

  // car's wheels
  fill(wheelColor);
  ellipse(x+5, y+80, 20, 20);
  ellipse(x+45, y+80, 20, 20);
};

// Rocks
var rock = function (x, y) {
fill(90, 77, 65);
ellipse(x, y, 30, 20);
}

draw = function () {
drawBackground();
rock(rock1X, rock1Y);
rock(rock2X, rock2Y);

drawCars(x1, y1, redColor, whiteColor);
drawCars(x2, y2, blueColor, greenColor);
drawCars(x3, y3, yellowColor, greyColor);

// Car run
if(!Win() && (!redCarLost || !blueCarLost || !yellowCarLost)) {
  if (!redCarLost) {
    x1 += random(0,3);
    y1 += (random(0,8) - 4);
    if (y1 < 50 || y1 > 280) {
      redCarLost = true;
    }
  }
  if (!blueCarLost) {
    x2 += random(0,4);
    y2 += (random(0,8) - 4);
    if (y2 < 50 || y2 > 280) {
      blueCarLost = true;
    }
  }
  if (!yellowCarLost) {
    x3 += random(0,6);
    y3 += (random(0,8) - 4);
    if (y3 < 50 || y3 > 280) {
      yellowCarLost = true;
    }
  }
} else {
  // Game Over
  fill(25, 89, 188);
  textSize(50);
  text("Game Over", 350, 100);
  if (x1+50 > 1100) {
    fill(redColor);
    textSize(30);
    text("Red Car Win", 370, 130);
  } else {
    fill(redColor);
    textSize(30);
    text("Red Car Lost", 370, 130);
  };
  if (x2+50 > 1100) {
    fill(blueColor);
    textSize(30);
    text("Blue Car Win", 370, 160);
  } else {
    fill(blueColor);
    textSize(30);
    text("Blue Car Lost", 370, 160);
  };
  if (x3+50 > 1100) {
    fill(yellowColor);
    textSize(30);
    text("Yellow Car Win", 370, 190);
  } else {
    fill(yellowColor);
    textSize(30);
    text("Yellow Car Lost", 370, 190);
  };
}

// crash redCar with rock 1
if(crash(x1, x1+70, y1, y1+50, rock1X, rock1X + 20, rock1Y, rock1Y + 20)){
redCarLost = true;
}
// crash redCar with rock 2
if(crash(x1, x1+70, y1, y1+50, rock2X, rock2X + 20, rock2Y, rock2Y + 20)){
redCarLost = true;
}

// crash blueCar with rock 1
if(crash(x2, x2+70, y2, y2+50, rock1X, rock1X + 20, rock1Y, rock1Y + 20)){
blueCarLost = true;
}
// crash blueCar with rock 2
if(crash(x2, x2+70, y2, y2+50, rock2X, rock2X + 20, rock2Y, rock2Y + 20)){
blueCarLost = true;
}

// crash yellowCar with rock 1
if(crash(x3, x3+70, y3, y3+50, rock1X, rock1X + 20, rock1Y, rock1Y + 20)){
yellowCarLost = true;
}
// crash yellow car with rock 2
if(crash(x3, x3+70, y3, y3+50, rock2X, rock2X + 20, rock2Y, rock2Y + 20)){
yellowCarLost = true;
}

// crash redCar with blueCar
if(crash(x1, x1+70, y1, y1+50, x2, x2+70, y2, y2+50 )) {
  redCarLost = true;
  blueCarLost = true;
}
// crash redCar with yellowCar
if(crash(x1, x1+70, y1, y1+50, x3, x3+70, y3, y3+50 )) {
  redCarLost = true;
  yellowCarLost = true;
}
// crash blueCar and yellowCar
if(crash(x2, x2+70, y2, y2+50, x3, x3+70, y3, y3+50 )) {
  blueCarLost = true;
  yellowCarLost = true;
}
};
