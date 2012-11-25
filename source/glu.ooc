use glu

Quadric: cover from GLUquadric*
	
gluPerspective: extern func(Double, Double, Double, Double)
gluSphere: extern func(Quadric, Double , Int, Int)
gluNewQuadric: extern func() -> Quadric
gluDeleteQuadric: extern func (Quadric)
gluLookAt: extern func(Double,Double,Double,Double,Double,Double,Double,Double,Double)
gluOrtho2D: extern func(Double,Double,Double,Double)
gluUnProject: extern func(...)
gluPickMatrix: extern func(...)
gluBuild2DMipmaps: extern func(Int, Int, Int, Int, Int, Pointer)
