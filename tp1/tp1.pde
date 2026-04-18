PImage obelisco;

void setup (){
size(800,400);
obelisco = loadImage("obelisco.jpg");
}

void draw(){
background(150);
image(obelisco, 0, 0, 400, 400);
noStroke();

fill(0,24,60);
rect(400,0,400,800);


fill(14,16,11);
ellipse(706,366, 100, 40);

fill(99,85,76);
beginShape();
vertex(400,387);
vertex(800,378);
vertex(800,400);
vertex(400,400);
endShape();

fill(204,213,222);
beginShape();
vertex(654,303);
vertex(660,303);
vertex(666,350);
vertex(659,348);
endShape();

fill(24,24,26);
beginShape();
vertex(538,318);
vertex(524,382);
vertex(476,384);
vertex(478,383);
vertex(477,388);
vertex(477,382);
vertex(466,381);
vertex(469,363);
vertex(486,359);
vertex(487,366);
vertex(491,363);
endShape();

beginShape();
vertex(474,293);
vertex(470,362);
vertex(467,383);
vertex(452,385);
vertex(400,387);
vertex(400,325);
vertex(465,294);
endShape();


fill(137,136,141);
beginShape();
vertex(526,394);
vertex(582,38);
vertex(603,26);
vertex(603,396);
endShape();

fill(215,214,209);
beginShape();
vertex(603,26);
vertex(620,38);
vertex(668,394);
vertex(603,396);
endShape();

fill(198,210,224);
beginShape();
vertex(447,255);
vertex(455,218);
vertex(480,231);
vertex(474,266);
endShape();

fill(100,112,124);
beginShape();
vertex(455,218);
vertex(450,227);
vertex(442,254);
vertex(447,255);
endShape();

fill(182,192.204);
beginShape();
vertex(454,221);
vertex(450,226);
vertex(442,254);
vertex(435,255);
vertex(444,223);
endShape();

fill(229,228,226);
beginShape();
vertex(440,257);
vertex(422,342);
vertex(457,346);
vertex(471,268);
endShape();

fill(94,78,78);
beginShape();
vertex(418,341);
vertex(456,346);
vertex(461,355);
vertex(459,351);
vertex(418,348);
endShape();

fill(189,171,167);
beginShape();
vertex(422,352);
vertex(419,362);
vertex(452,363);
vertex(452,355);
vertex(444,354);
vertex(444,352);
endShape();

fill(84,83,79);
beginShape();
vertex(441,276);
vertex(431,271);
vertex(474,278);
vertex(473,291);
vertex(468,291);
vertex(467,282);
endShape();

fill(147,147,135);
beginShape();
vertex(437,276);
vertex(427,321);
vertex(400,321);
vertex(400,269);
endShape();

fill(219,203,128);
beginShape();
vertex(427,320);
vertex(430,328);
vertex(400,328);
vertex(400,320);
endShape();

fill(7,95,99);
beginShape();
vertex(424,344);
vertex(424,335);
vertex(400,331);
vertex(400,341);
endShape();

stroke(133,17,20);
strokeWeight(5);
line(400, 366, 424, 367);
stroke(173,180,190);
line(419,362,457,364);
stroke(125,120,116);
line(667,350,686,350);
stroke(180,175,171);
line(666,355,686,355);

noStroke();

fill(91,91,91);
beginShape();
vertex(696,294);
vertex(687,295);
vertex(687,302);
vertex(663,306);
vertex(663,318);
vertex(667,350);
vertex(702,352);
endShape();

fill(184,188,189);
beginShape();
vertex(696,294);
vertex(699,294);
vertex(700,302);
vertex(800,322);
vertex(800,352);
vertex(702,352);
endShape();

fill(215,223,226);
beginShape();
vertex(400,254);
vertex(436,262);
vertex(432,275);
vertex(400,268);
endShape();

fill(219,222,227);
beginShape();
vertex(684,322);
vertex(686,350);
vertex(665,349);
vertex(662,318);
endShape();

fill(14,16,11);
ellipse(750,363, 120,40);
fill(35,44,25);
ellipse(690,360, 40,20);
ellipse(748,359,40,10);
ellipse(725,354,40,10);

strokeWeight(3);
stroke(87,90,69);
line(667,380,800,377);
strokeWeight(7);
stroke(44,39,36);
line(670,389,800,393);
strokeWeight(2);
stroke(23,23,23);
line(605,370,666,371);
line(605,370,526,370);
line(525,392,666,394);
noStroke();

fill(23,23,23);
beginShape();
vertex(667,394);
vertex(666,374);
vertex(713,376);
vertex(715,394);
endShape();

beginShape();
vertex(526,392);
vertex(482,394);
vertex(482,382);
vertex(527,378);
endShape();

beginShape();
vertex(583, 385);
vertex(582, 396);
vertex(605,396);
vertex(624, 395);
vertex(625, 385);
vertex(605,387);
endShape();
}
