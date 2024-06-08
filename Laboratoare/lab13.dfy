method test (x: int , y: int ) returns (z: int )
{
    assume (x==y) ;
    z:=x-y;
    assert (z==0) ;
}



// 1.a. x = y => x-y = 0, oricare ar fi x,y => z =0 , z= x-y


/*

method test1b (x: int , y: int ) returns (z: int )
{
    assume (true) ;
    var x:=100;
    assert (x==100) ;
}

*/

// b. preconditie = true , x devine 100, se verifica in postconditie daca x=100 


/*
method test1c (x: int ) returns (x: int )
{
    assume (x >= 0);
    assume (x < 100) ;
    var x:=x+1;
    assert () ;
} 

*/

// c.  x = 0 =>  x = 0+1= 1 , 1 apartine [0,100]
//     x == 99 => x = 99+1=100 , 100 apartine [0,100]


method test2a (x: int ) returns (y: int )
{
    assume (true) ;
    x:=2*y;
    assert (y<=x) ;
}