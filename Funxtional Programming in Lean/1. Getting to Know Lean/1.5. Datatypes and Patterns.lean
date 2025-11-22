/-
def curry (f : (String × Nat) → PersonIDP) : String → Nat → PersonIDS :=
  fun s n => f (s, n)
def uncurry (g : String → Nat → PersonIDS) : (String × Nat) → PersonIDP :=
  fun p => g p.fst p.snd
structure PersonIDS where
  x : String
  y : Nat
def Pointone: PersonIDS := {x := "Vincent", y := 2}
#eval Pointone
#check uncurry PersonIDS.mk
-/
inductive MyNat where
  | zero : MyNat
  | succ(n : MyNat) : MyNat
open MyNat
#check  MyNat.zero
def add : MyNat → MyNat → MyNat
  | zero, m => m
  | succ n, m => succ (add n m)
def one : MyNat := succ zero
def two : MyNat := succ one
def three : MyNat := succ two
#eval add two three
------------------------
--1.5.1. Pattern Matching
inductive Shape where
  | circle : Float → Shape
  | rect : Float → Float → Shape
open Shape
def area (s : Shape) : Float :=
  match s with
  | circle r => 3.14159 * r * r
  | rect w h => w * h

#eval area (circle 2)
#eval area (rect 3 4)
------------------------
def isZero (n : Nat) : Bool :=
  match n with
  | Nat.zero => true
  | Nat.succ k => false
#eval isZero Nat.zero
#eval isZero 0
#eval isZero 5
------------------------
def pred (n :Nat) : Nat :=
  match n with
  | Nat.zero => Nat.zero
  | Nat.succ k => k
#eval pred 5
#eval pred 0
------------------------
structure Point3D where
  x : Float
  y : Float
  z : Float
def depth (p : Point3D) : Float :=
  match p with
  | {x := h, y := w, z := d} => d
def X1 : Point3D := {x := 1, y := 2, z := 3}
#eval depth X1
------------------------
--1.5.2. Recursive Functions
def even (n : Nat) : Bool :=
  match n with
  |Nat.zero => true
  |Nat.succ k => not (even k)
/-
def evenLoops (n : Nat) : Bool :=
  match n with
  | Nat.zero => true
  | Nat.succ k => not (evenLoops n)
-/
def plus (n : Nat) (k : Nat) : Nat :=
  match k with
  | Nat.zero => n
  | Nat.succ k' => Nat.succ (plus n k')
#eval plus 3 2
def times (n : Nat) (k : Nat) : Nat :=
  match k with
  | Nat.zero => Nat.zero
  | Nat.succ k' => plus n (times n k')
#eval times 3 2
def minus (n : Nat) (k : Nat) : Nat :=
  match k with
  | Nat.zero => n
  | Nat.succ k' => pred (minus n k')
#eval minus 3 2
/-
def div (n : Nat) (k : Nat) : Nat :=
  if n < k then
    0
  else Nat.succ (div (n - k) k)
-/
