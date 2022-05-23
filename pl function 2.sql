/*2. Create a stored function by the name of FUNC1 to take three parameters, the sides of a triangle.
 The function should return a Boolean value:- TRUE if the triangle is valid, FALSE otherwise
 . A triangle is valid if the length of each side is less than the sum of the lengths of the other two sides. 
 Check if the dimensions entered can form a valid triangle. Calling program for the stored function need not be written.*/
 
 
 create table temppp
 (
 Statement varchar(50)
 );
 #-------------------------------------------------------------------------------------------------------------
 delimiter //
 create function FUNC1(x int, y int, z int)
 returns boolean
 deterministic
 begin
		if((x+y)>z) then if ((x+z)>y) then if ((y+z)>x)  then
        return true;
        end if;
        end if;
        else
        return false;
        end if;
 
 
 end; //
 delimiter ;
 
 drop function FUNC1;
 #------------------------------------------------------------------------------------------------
 delimiter //
 create procedure traingle(x int,y int, z int)
 begin
		declare a varchar (20);
        set a = FUNC1(x,y,z);
        insert into temppp values(x);
 
 end; //
 delimiter ;
drop procedure  traingle;
#--------------------------------------------------------------------------------------------------------
 call traingle(1,2,3);
  call traingle(2,4,7);
   call traingle(8,4,11);
 
 select * from temppp;
 