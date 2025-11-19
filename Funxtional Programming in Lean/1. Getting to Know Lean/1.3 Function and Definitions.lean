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
