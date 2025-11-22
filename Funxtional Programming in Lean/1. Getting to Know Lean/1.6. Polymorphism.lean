inductive Animal where
    |dog
    |cat
def speak : Animal → String
    | Animal.dog => "汪汪"
    | Animal.cat => "喵喵"
#eval speak Animal.dog
#eval speak Animal.cat
def length {α : Type} (xs : List α) : Nat :=
    match xs with
    | [] => 0
    | _ ::t => Nat.succ (length t)
#eval length ([1, 2, 3] : List Nat)
#eval length (["a", "b"] : List String)
#eval length ([Animal.dog, Animal.cat])
structure Dog where
    name : String
structure Cat where
    name : String
def names {α : Type} (getName : α → String) (xs : List α) : List String :=
    xs.map getName
def dogName (d : Dog) : String := d.name
def catName (c : Cat) : String := c.name
#eval names dogName [{name := "旺财"}, {name := "小黑"}]
#eval names catName [{name := "咪咪"}, {name := "花花"}]
------------------------
structure PPoint ( α : Type) where
    x : α
    y : α
def p1 : PPoint Int :=
    {x := 3, y := -1}
def p2 : PPoint Int :=
    {x := 10, y := 20}
def p3 : PPoint String :=
    {x := "left", y := "right"}
def natOrigin : PPoint Nat :=
    {x := Nat.zero, y := Nat.zero}
#eval natOrigin
def replaceX (α : Type) (point : PPoint α) (newX : α) : PPoint α :=
    {point with x := newX}
#eval replaceX Int p1 100
#eval replaceX String p3 "center"
#check replaceX
#check replaceX Nat
#check replaceX Nat natOrigin
#check replaceX Nat natOrigin 5
#eval replaceX Nat natOrigin 5
------------------------
inductive Sign where
    | pos
    | neg
def posOrNegThree (s : Sign) :
        match s with | Sign.pos => Nat | Sign.neg => Int :=
    match s with
    | Sign.pos => (3 : Nat)
    | Sign.neg => (-3 : Int)
#eval posOrNegThree Sign.pos
------------------------
