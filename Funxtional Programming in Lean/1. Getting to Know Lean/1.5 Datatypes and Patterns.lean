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
def product := ("Vincent", 2)
#check product
structure PersonID where
  x : String
  y : Nat
def Pointone: PersonID := {x := "Vincent", y := 2}
#check Pointone
