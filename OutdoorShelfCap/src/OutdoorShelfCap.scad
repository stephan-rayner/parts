$fn=200;
global_height = 6.35;
outer_diameter = 40.00;
inner_diameter = 35.88;
wall_thickness = 1.40;
base_height = 1.10;
pocket_diameter = inner_diameter - 2 * wall_thickness;


inner_height=4.85;
extra_internal_height=global_height - inner_height;

cylinder(h=base_height, d=outer_diameter);
difference() {
    cylinder(h=global_height, d=inner_diameter);
    cylinder(h=global_height, d=pocket_diameter);
}