$fn = 120;


module ScrewCut(h) {
    cylinder(h = 2, r1 = 3.5, r2 = 2, center=false);
    cylinder(h=h, d=4, center=false);
}

module Base(diameter, thickness) {

  
    difference(){
        cylinder(h=thickness, d=diameter);
        translate([-diameter/4, 0, 0]){
            ScrewCut(thickeness);
        }
        translate([diameter/4, 0, 0]){
            ScrewCut(thickness);
        }
    }
    
}

module Insert() {
    width = 25;
    depth = 7.5;
    height = 7;
    throughHoleDiameter = 3;
    difference() {
        cube([width, depth, height], center=true);
            rotate([0, 90, 0]){
                cylinder(h = width, d = throughHoleDiameter, center=true);
            }
    }
}

//Base(30, 5);
Insert();

//54mm
difference() {
    translate([-25/2, -14/2, 7/2]){
        //rotate([-45, 0, 0]){
            cube([25, 14, 40+19], center = false);
        //}
    }

    union(){
        translate([-25/4, -14/2, 19/2+40]){
            rotate([-90, 0, 0]){
                ScrewCut(h=14);
            }
        }

        translate([25/4, -14/2, 19/2+40]){
            rotate([-90, 0, 0]){
                ScrewCut(h=14);
            }
        }
    }
}