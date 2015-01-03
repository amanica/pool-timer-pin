


baseY=4;

pinHeight=2;

innerPinLen=6;
outerPinLen=10;
gapBetweenPins=2;

pinWidth=1.5;

switchFootWidth=1.5; // X
switchFootLen=1.5; // Y
switchFootYOffset=8; // from base

baseX= 2*pinWidth + gapBetweenPins+ switchFootWidth;

// base
cube([baseX,baseY, pinHeight]);

// inner Pin
translate([0,baseY,0]) cube([pinWidth,innerPinLen, pinHeight]);

// outer Pin
translate([pinWidth+gapBetweenPins,baseY,0]) cube([pinWidth,outerPinLen, pinHeight]);

// switch Foot
translate([2*pinWidth+gapBetweenPins,switchFootYOffset+baseY,0]) cube([switchFootLen,switchFootLen, pinHeight]);
