/**
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

//import Foundation
//import Metal
//
//class Triangle: Node {
//
//  init(device: MTLDevice){
//
//    let V0 = Vertex(x:  0.0, y:   0.5, z:   0.0, r:  1.0, g:  0.0, b:  0.0, a:  1.0)
//    let V1 = Vertex(x: -0.5, y:  -0.5, z:   0.0, r:  0.0, g:  1.0, b:  0.0, a:  1.0)
//    let V2 = Vertex(x:  0.5, y:  -0.5, z:   0.0, r:  0.0, g:  0.0, b:  1.0, a:  1.0)
//
//    let verticesArray = [V0,V1,V2]
//    super.init(name: "Triangle", vertices: verticesArray, device: device)
//  }
//
//}



import Foundation
import Metal

class Triangle: Node {
  
  init(device: MTLDevice){
    let A = Vertex(x: -1.0, y:   1.0, z:   1.0, r:  1.0, g:  1.0, b:  1.0, a:  0.0)
    let B = Vertex(x: -1.0, y:  -1.0, z:   1.0, r:  0.0, g:  1.0, b:  1.0, a:  0.0)
    let C = Vertex(x:  1.0, y:  -1.0, z:   1.0, r:  0.0, g:  1.0, b:  1.0, a:  0.0)
    let D = Vertex(x:  1.0, y:   1.0, z:   1.0, r:  0.0, g:  1.0, b:  1.0, a:  0.0)

    let Q = Vertex(x: -1.0, y:   1.0, z:  -1.0, r:  1.0, g:  1.0, b:  1.0, a:  0.0)
    let R = Vertex(x:  1.0, y:   1.0, z:  -1.0, r:  1.0, g:  1.0, b:  1.0, a:  0.0)
    let S = Vertex(x: -1.0, y:  -1.0, z:  -1.0, r:  1.0, g:  1.0, b:  1.0, a:  0.0)
    let T = Vertex(x:  1.0, y:  -1.0, z:  -1.0, r:  1.0, g:  1.0, b:  1.0, a:  0.0)

    
    let verticesArray:Array<Vertex> = [
      A,B,C ,A,C,D,   //Front
      R,T,S ,Q,R,S,   //Back
      
      Q,S,B ,Q,B,A,   //Left
      D,C,T ,D,T,R,   //Right
      
      Q,A,D ,Q,D,R,   //Top
      B,S,T ,B,T,C    //Bottom
    ]
    
    super.init(name: "Triangle", vertices: verticesArray, device: device)
  }
}

