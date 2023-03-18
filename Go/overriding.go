package main
import (
	"fmt"
)

type Shape interface {
	Area() float64   //create area method
}

type Rectangle struct {
	width  float64   //width of rectangle
	height float64  //height of rectangle
}

func (rect Rectangle) Area() float64 {
	return rect.width * rect.height   //area of rectangle 
}

type Square struct {
	side float64  //side of square
}

func (sq Square) Area() float64 {
	return sq.side * sq.side    //area of square
}

func main() {
	rect := Rectangle{width: 16, height: 6}   //set the width and height of rectangle
	fmt.Println("Area of rectangle: ", rect.Area()) //print area of rectangle

	sq := Square{side: 8}  //set the sides of square
	fmt.Println("Area of square: ", sq.Area())  //print area of square
}

//output:
//Area of rectangle: 96
//Area of square