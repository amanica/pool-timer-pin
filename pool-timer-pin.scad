baseY=6;

pinHeight=3;
gapBetweenPins=2.7; //measured 2.6, add 0.1 for blade

pinWidth=1.5;

switchFootWidth=2.75-pinWidth; // X
switchFootLen=2; // Y
switchFootYOffset=1;//6; // from base on.  on 6-8(was5-7), off 1-3

innerPinLen=4;
outerPinLen=switchFootYOffset+switchFootLen;

baseX= 2*pinWidth + gapBetweenPins+ switchFootWidth/2;
holeDiameter=4;

epsilon=0.001;
$fn=35;

// base
difference(){
    cube([baseX,baseY, pinHeight]);
    translate([baseX/2,baseY/2,-epsilon])cylinder(d=holeDiameter,h=pinHeight+epsilon*2);
}

// base pointer
color("blue")translate([-sqrt(2*pow(pinHeight/4,2)),0,pinHeight/2]) rotate([0,45,0])  cube([pinHeight/2,baseY/2, pinHeight/2]);

// inner Pin
translate([0,baseY,0]) cube([pinWidth,innerPinLen, pinHeight]);

// outer Pin
translate([pinWidth+gapBetweenPins,baseY,0]) cube([pinWidth,outerPinLen, pinHeight]);

// outer Pin blade
color("blue")translate([-sqrt(2*pow(pinHeight/4,2)) +
pinWidth+gapBetweenPins,baseY,pinHeight/2]) rotate([0,45,0])  cube([pinHeight/2,outerPinLen, pinHeight/2]);

// switch Foot
translate([2*pinWidth+gapBetweenPins,switchFootYOffset+baseY,0]) cube([switchFootLen,switchFootLen, pinHeight]);


