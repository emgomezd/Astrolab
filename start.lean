#check 1
#check "checking"
def square : Nat → Nat :=
fun x => x * x
#eval square 5
#check ( square )
def double (x : Nat) : Nat := x + x
#eval ( double 5 )
#eval ( square 5 )
def StringOrInt : Bool → Type :=
fun x => match x with 
  | true  => Nat
  | false => String
def getStringOrInt : ( x : Bool ) → StringOrInt x :=
fun x => match x with 
  | true  => ( 94 : Nat )
  | false => ( "Ninety four" : String )
def valToString : ( x : Bool ) → StringOrInt x → String :=
fun x val => match x with 
  | true  => ( val : Nat ).repr
  | false => ( val : String )
#eval (6 + 3 * 12)  
#eval (6.0 + 3 * 12)  
def integerval : Nat := (6 * 6)
def doubleval : Float := 0.1
#check 0.1
#check integerval
#check doubleval

