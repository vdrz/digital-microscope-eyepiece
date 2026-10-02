echo("Работа Вадима Разеева!");
len_phone=145;
width_phone=56;
thickness_phone=8;
corner_round=8;

//color("red")
//translate([0, 0, 10])
//cube([width_phone, len_phone, thickness_phone], center=true);

module smartphone() {
    smartphone_block();
    cameras_block();
}


module cameras_block() {
    color("blue")
    translate([width_phone/2-50, len_phone/2-10, 0])
    cylinder(d=9, h = thickness_phone - 1);

    color("blue")
    translate([width_phone/2-50, len_phone/2-25, 0])
    cylinder(d=9, h = thickness_phone - 1);
}

module smartphone_block(){
    hull() {
        color("red")
        translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
        cylinder(h=thickness_phone, d=corner_round, $fn=32, center=true);

        mirror([1,0,0])
        color("red")
        translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
        cylinder(h=thickness_phone, d=corner_round, $fn=32, center=true);

        mirror([0,1,0])
        color("red")
        translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
        cylinder(h=thickness_phone, d=corner_round, $fn=32, center=true);

        mirror([1,0,0])
        mirror([0,1,0])
        color("red")
        translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
        cylinder(h=thickness_phone, d=corner_round, $fn=32, center=true);
    }
}
smartphone();
