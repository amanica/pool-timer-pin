


baseY=4;

pinHeight=2;

innerPinLen=6;
outerPinLen=10;
gapBetweenPins=2.5;

pinWidth=1.5;

switchFootWidth=1.5; // X
switchFootLen=1.5; // Y
switchFootYOffset=8; // from base

baseX= 2*pinWidth + gapBetweenPins+ switchFootWidth;

// base
cube([baseX,baseY, pinHeight]);

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


