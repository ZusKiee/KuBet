//drawRectangle(x1,y1,x2,y2,color,width)
///@arg x1
///@arg y1
///@arg x2
///@arg y2
///@arg color
///@arg width

function drawRectangle(argument0,argument1,argument2,argument3,argument4,argument5){

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var color = argument4;
var width = argument5;

draw_set_color(color)
draw_rectangle(x1,y1,x2,y2,true)

var Repeative = 0

do
{
    Repeative += 1
    draw_rectangle(x1-Repeative,y1-Repeative,x2+Repeative,y2+Repeative,true)
}
until(Repeative = width)

}