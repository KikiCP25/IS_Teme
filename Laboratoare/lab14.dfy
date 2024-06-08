//  1
//method identic6 (x: array <int >, n: int ) returns ( rez : bool )
//ensures rez == ( forall i :: 0 <= i < n == > x[i] == x[i + 1])
//{
// Write the code which satisfies the postcondition
//}

/*
method identic6 (x: array <int >, n: int ) returns ( rez : bool )
ensures rez == ( forall i :: 0 <= i < n ==> x[i] == x[i + 1])
requires 0 <= n < x.Length
{
    
    var i := 0;
    rez := true ;
    while i < n
    {
        //invariant 0 <= n && rez == (forall j :: 0<=j < i ==> x[j] == x[j+1])
        if x[i] != x[i +1] {
        rez := false ;
        }
        i := i + 1;
    }
    return rez;
}
*/

// ex 4

// a
function F(x: int ): int {
if x < 10 then x else F(x - 1)
} 

// b
function G(x: int ): int {
if 0 <= x then G(x - 2) else x
}

// c
function H(x: int ): int {
if  x < -60  then x else H(x - 1)   
}

// d

function I(x: nat , y: nat ): int {
    if x == 0 || y == 0 then 12
    else if x % 2 == y % 2 then
        I(x - 1, y)
    else
        I(x, y - 1)
}

// e

function J(x: nat , y: nat ): int {
    if x == 0 then y
    else if y == 0 then
        J(x - 1, 3)
    else
        J(x, y - 1)
}

// f

function K(x: nat , y: nat , z: nat ): int {
    if x < 10 || y < 5 then x + y
    else if z == 0 then
        K(x - 1, y, 5)
    else
        K(x, y - 1, z - 1)
}


// g

function L(x: int ): int {
    if x < 100 then L(x + 1) + 10 else x
}