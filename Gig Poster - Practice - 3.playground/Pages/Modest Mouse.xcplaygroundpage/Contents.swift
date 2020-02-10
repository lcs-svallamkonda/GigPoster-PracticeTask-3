//: # Gig Poster - Practice Task 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![modest-mouse-no-grid](modest-mouse-no-grid.jpg "Modest Mouse")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let darkGrey = Color(hue: 60, saturation: 9, brightness: 56, alpha: 100)
let lightGrey = Color(hue: 71, saturation: 5, brightness: 87, alpha: 100)
let deepYellow = Color(hue: 46, saturation: 99, brightness: 99, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...
//create a grey background
canvas.drawShapesWithBorders = false
canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//create a loop to draw diagonal lines
//set the line width
canvas.defaultLineWidth = 15

for x1 in stride(from: -378, through: 378, by: 42) {
    
    //define y values
    let y1 = 0
    let y2 = 400
    
    //define second x value
    let x2 = x1 + 400
    
    //change colour of lines to grey
    canvas.lineColor = lightGrey
    
    //make lins change colours twice
    if x1 >= 84 {
        canvas.lineColor = black
    } else if x1 >= -42 {
        canvas.lineColor = deepYellow
    }
    
    canvas.drawLine(from: Point(x: x1, y: y1), to: Point(x: x2, y: y2))
    
}

//add grey rectangle to top of poster
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

