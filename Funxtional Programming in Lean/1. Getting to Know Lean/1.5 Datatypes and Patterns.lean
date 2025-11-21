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
