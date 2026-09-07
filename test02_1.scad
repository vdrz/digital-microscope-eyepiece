echo("Работа Вадима Разеева!");
len_phone=145;
width_phone=56;
thickness_phone=8;
corner_round=8;

color("red")
translate([0, 0, 10])
cube([width_phone, len_phone, thickness_phone], center=true);

hull() {
    color("red")
    translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
    cylinder(h=8, d=corner_round, $fn=32, center=true);

    mirror([1,0,0])
    color("red")
    translate([width_phone/2, len_phone/2, 0])
    cylinder(h=8, d=corner_round, $fn=32, center=true);

    mirror([0,1,0])
    color("red")
    translate([width_phone/2, len_phone/2, 0])
    cylinder(h=8, d=corner_round, $fn=32, center=true);

    mirror([1,0,0])
    mirror([0,1,0])
    color("red")
    translate([width_phone/2, len_phone/2, 0])
    cylinder(h=8, d=corner_round, $fn=32, center=true);
}