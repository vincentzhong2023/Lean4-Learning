def hello := "Hello"
def lean : String := "Lean"
#eval String.append hello (String.append " " lean)
def add1 (n : Nat) : Nat := n + 1
#eval add1 7
def maximum (n : Nat) (k : Nat) : Nat :=
  if n < k then
    k
  else
    n
def spaceBetween (before : String) (after : String) : String :=
  String.append before (String.append " " after)
#eval maximum (5 + 8) (2 * 7)
#check add1
#check (add1)
#check (maximum)
#check maximum 3
#check spaceBetween "Hello"
def joinStringsWith (first : String) (second : String) (third : String) := spaceBetween second (spaceBetween first third)
#eval joinStringsWith "," "one" "and another"
#check joinStringsWith
def volume (height : Nat) (width : Nat) (depth : Nat) := height * width * depth
#eval  volume 2 3 4
#check volume
def Str := String
def aStr : Str := "This is a string"
#eval aStr
def NaturalNumber : Type := Nat
--def thirtyEight : NaturalNumber := 38
--#check thirtyEight
abbrev Naturalnumber : Type := Nat
def thirtyNine : Naturalnumber := 39
#eval thirtyNine
