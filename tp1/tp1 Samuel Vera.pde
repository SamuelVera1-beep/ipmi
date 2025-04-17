PImage bailarina;

void setup (){
size(800,400);
bailarina = loadImage("bailarina.jpg");
}

void draw(){
background(150);
image(bailarina, 0, 0, 400, 400);
//fondo
stroke(99,99,99);
line(400,326,740,317);
line(740,317,800,314);
line(740,317,800,358);
line(740,317,740,0);
noStroke();
//lineas piernas
stroke(53,44,45);
line(563,282,534,350);
line(564,342,596,279);
line(608,317,629,261);
line(627,325,657,268);
noStroke();

fill(53,44,45);
//pies
triangle(566,340,570,370,469,375);
triangle(608,316,597,336,674,350);

//Pierna 1
ellipse(579,265,35,45);
triangle(565,270,566,342,529,359);
triangle(598,279,564,273,565,341);
triangle(598,280,597,260,579,273);

fill(29,28,23);
triangle(596,259,620,229,570,245);
triangle(572,246,573,225,590,239);
triangle(573,225,589,240,620,229);
noFill();

//brazos
fill(53,44,45);
beginShape();
vertex(560,90);
vertex(586,118);
vertex(585,171);
vertex(555,189);
vertex(553,139);
vertex(560,135);
endShape();
noFill();

fill(15,11,5);
beginShape();
vertex(571,106);
vertex(573,125);
vertex(566,135);
vertex(574,143);
vertex(576,158);
vertex(584,149);
vertex(585,124);
endShape();

//torso
fill(53,44,45);
beginShape();
vertex(608,67);
vertex(564,81);
vertex(630,125);
vertex(688,89);
vertex(656,74);
vertex(654,66);
endShape();
noFill();

//cara
fill(53,44,45);

beginShape();
vertex(660,57);
vertex(665,50);
vertex(661,35);
vertex(655,29);
vertex(654,27);
vertex(636,23);
vertex(616,24);
vertex(603,29);
vertex(596,36);
vertex(595,45);
vertex(623,71);

endShape();
noFill();

fill(15,11,5);
beginShape();
vertex(626,86);
vertex(655,65);
vertex(661,57);
vertex(649,58);
vertex(622,58);
vertex(616,52);
vertex(612,43);
vertex(602,39);
vertex(596,43);
vertex(591,48);
vertex(595,52);
vertex(605,56);
vertex(610,68);
vertex(612,66);
vertex(606,68);
endShape();

stroke(15,11,5);
line(613,38, 621,37);
line(621,37, 628,36);
line(645,38,655,37);
line(655,37,658,40);
noStroke();

beginShape();
vertex(631,43);
vertex(639,45);
vertex(648,44);
vertex(644,40);
vertex(637,40);
endShape();

beginShape();
vertex(628,51);
vertex(637,48);
vertex(645,48);
vertex(651,51);
endShape();

noFill();

//pierna2
fill(15,11,5);
triangle(630,262,628,327,608,316);
triangle(629,261,657,269,627,327);
ellipse(640,254,35,40);
triangle(623,259,617,273,635,280);
triangle(620,289,617,270,635,280);
triangle(658,270,658,254,648,267);
triangle(655,250,682,223,635,236);
triangle(682,223,624,229,635,250);
noFill();

//corset
fill(239,213,129);
beginShape();
vertex(558,87);
vertex(567,100);
vertex(568,102);
vertex(576,115);
vertex(578,115);
vertex(590,143);
vertex(581,153);
vertex(636,162);
vertex(683,147);
vertex(667,137);
vertex(693,94);
vertex(690,90);
vertex(654,99);
vertex(604,99);
vertex(565,80);
endShape();
noFill();

fill(213,192,173);
ellipse(634,102, 5,5);
ellipse(630,113, 5,5);
ellipse(631,128,5,5);
ellipse(931,139,5,5);
ellipse(632,148,5,5);
ellipse(638,156,5,5);
noFill();

//pollera
fill(169,145,121);
beginShape();
vertex(580,153);
vertex(565,159);
vertex(512,211);
vertex(573,225);
vertex(620,228);
vertex(623,229);
vertex(681,222);
vertex(697,219);
vertex(711,223);
vertex(731,213);
vertex(693,150);
vertex(683,146);
vertex(636,161);
endShape();
noFill();

//fill(0);
//text(mouseX + "–" + mouseY, mouseX, mouseY);
//println(mouseX + "–" + mouseY);
}
