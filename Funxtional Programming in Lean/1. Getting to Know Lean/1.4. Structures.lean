#check 1.2
#check -454.21232115
#check 0.0
#check 0
#check (0 : Float)
structure Point where
  x : Float
  y : Float
#check Point
#check Nat
def origin : Point := {x := 0, y := 0}
#check origin
#eval origin
#eval origin.x
#eval origin.y
def addPoints (p1 : Point) (p2 : Point) : Point :=
  {x := p1.x + p2.x, y := p1.y + p2.y}
#eval addPoints {x := 1.5, y := 32} {x := -8, y := 0.2}
def distance (p1 : Point) (p2 : Point) : Float :=
  Float.sqrt ((p2.x - p1.x) ^ 2 + (p2.y - p1.y) ^ 2.0)
#eval distance {x := 1.0, y := 2.0} {x := 5.0, y := -1.0}
structure Point3D where
  x : Float
  y : Float
  z : Float
def origin3D :Point3D := {x := 0, y := 0, z := 0}
#check ({x := 0.0, y := 0.0} : Point)
def s : Float := 1.124
#check (s : Float)
------------------------
--1.4.1. Updating Structure Fields
def zeroX (p : Point) : Point :=
--  {x := 0, y := p.y}
  {p with x := 0}
def fourAndThree : Point :=
  {x := 4.3, y := 3.2}
#eval zeroX {x := 3.5, y := 4.5}
#eval zeroX fourAndThree
------------------------
--1.4.2. Behind the Scenes
#check Point.mk 1.5 2.8
#check (Point.mk)
structure PointConstructor where
  point ::
    x : Float
    y : Float
#check (Point.x)
#check (Point.y)
#check (PointConstructor.point)
#eval origin.x
#eval Point.x origin
#eval "one string".append " and another"
def Point.modifyBoth (f : Float → Float) (p : Point) : Point :=
  {x := f p.x, y := f p.y}
#eval fourAndThree.modifyBoth Float.floor
-------------------------
--1.4.3. Exercises
structure RectangularPrism where
  Length : Float
  Width : Float
  Height : Float
def volume (r : RectangularPrism) : Float :=
  r.Length * r.Width * r.Height
structure Segment where
  startpoint : Point
  endpoint : Point
def length (s : Segment) : Float :=
  distance s.startpoint s.endpoint
