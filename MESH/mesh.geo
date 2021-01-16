// ======================= CYLINDER @ Mach 3
// ref h = 0.0018;
h = 0.01;
r = 0.25;
L = 4;
H = 1;
c = 0.6;

Point(1) = {c,0,0,h};
Point(2) = {c+r,0,0,h};
Point(3) = {c,r,0,h};
Point(4) = {c-r,0,0,h};
Point(5) = {c,-r,0,h};

Point(6) = {0,-H,0,h};
Point(7) = {L,-H,0,h};
Point(8) = {L,H,0,h};
Point(9) = {0,H,0,h};

Circle(1) = {2,1,3};
Circle(2) = {3,1,4};
Circle(3) = {4,1,5};
Circle(4) = {5,1,2};

Line(6) = {6,7};
Line(7) = {7,8};
Line(8) = {8,9};
Line(9) = {9,6};

Line Loop(1) = {1,2,3,4};
Line Loop(2) = {6,7,8,9};

Plane Surface(1) = {1,2};

Physical Surface("VOLUME") = {1};
Physical Line("CYLINDER") = {1,2,3,4};
Physical Line("INLET") = {9};
Physical Line("OUTLET") = {7};
Physical Line("WALLS") = {6,8};

Mesh.Algorithm = 5;
