use <text_on.scad>

$fn = 50;

module frame(width, length, height, corner_radius) {
    corners = [
        [0, 0, 0],
        [width, 0, 0],
        [0, length, 0],
        [width, length, 0]
    ];
    
    difference() {
        hull() {
            for (i = [0:3]) {
                translate(corners[i]) cylinder(height, corner_radius, corner_radius);
            }
        }
        
        
    }
}

frame(50, 82, 10, 4);

height = 7;
corner_radius = 2.5;
base = -2;
corners = [
    [24.5, 41.5, base],
    [-24.5, 41.5, base],
    [24.5, -41.5, base],
    [-24.5, -41.5, base]
    ];


//frame
difference() {
    hull() {
        for (i = [0:3]) {
            translate(corners[i])
            cylinder(height,corner_radius,corner_radius);
        }
    }

    translate([-17,-38,-1]) cube([34,60.5,7]);
    translate([-21.75,14.5,-1]) cube([43.5,8,7]);
    translate([-30,31,0.5]) cube([60,10,7]);
    translate([-11.5,-32.5,-1]) cube([23,60.5,7]);

    for (j = [0:6]) {
        translate([0, 2.25 - 6*j,0]) hull () {
            translate([-21.75,0,3.5])
            rotate([0,90,0])
            cylinder(43.5,2.75,2.75);
            translate([-21.75,0,10])
            rotate([0,90,0])
            cylinder(43.5,2.75,2.75);
        }
    }

    translate([11,25,2.5])
    rotate([0,90,0])
    cylinder(3.3,2.5,0.5);
    
    translate([-11,25,2.5])
    rotate([0,-90,0])
    cylinder(3.3,2.5,0.5);
}


//iner part 1
difference() {
    union() {
        hull() {
            translate([-16.5,-35,2.5]) rotate([0,90,0])cylinder(33,2.5,2.5);

            translate([-16.5,19.5,2.5]) rotate([0,90,0]) cylinder(33,2.5,2.5);
        }
 
        translate([21.25,19.5,2.5]) rotate([0,-90,0]) cylinder(42.5,2.5,2.5);
    }
    translate([-11.5,-32.5,-1]) cube([23,60.5,7]);
    translate([11,-29.5,2.5]) rotate([0,90,0]) cylinder(3.3,2.5,0.5);
    translate([-11,-29.5,2.5]) rotate([0,-90,0]) cylinder(3.3,2.5,0.5);
}
    
//inner part 2
union() {
    difference() {    
        union(){
            hull() {
                translate([-11,-29.5,2.5])
                rotate([0,90,0])
                cylinder(22,2.5,2.5);
                translate([-11,25,2.5])
                rotate([0,90,0])
                cylinder(22,2.5,2.5);
            }
            hull() {
                translate([-5.5,-29.5,2.5])
                rotate([0,90,0])
                cylinder(11,2.5,2.5);
                translate([-5.5,25,2.5])
                rotate([0,90,0])
                cylinder(11,2.5,2.5);
            }
        }
        
        translate([-6,-27,-1]) cube([12,49.5,7]);
    }
    
    translate([10.5,-29.5,2.5])
    rotate([0,90,0])
    cylinder(3.3,2.5,0.5);
    
    translate([-10.5,-29.5,2.5])
    rotate([0,-90,0])
    cylinder(3.3,2.5,0.5);
        
    translate([-10.5,25,2.5])
    rotate([0,-90,0])
    cylinder(3.3,2.5,0.5);
    
    translate([10.5,25,2.5])
    rotate([0,90,0])
    cylinder(3.3,2.5,0.5);
}



