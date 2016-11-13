


with  ADA.TEXT_IO;
use   ADA.TEXT_IO;


procedure date is

  type MONTH_NAME is ( Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec );
  
  type DATE is 
  record
    day   : INTEGER;
    month : MONTH_NAME;
    year  : INTEGER;
  end record;
  
  type BIRTH_DATE is
  record
    name  : STRING(1..40);
    bdate  : DATE;
  end record;
  
  
  type BD_ARR is array ( POSITIVE range <> ) of BIRTH_DATE;
  
  procedure print_bday ( bd : BD_ARR ) is
  begin
    put_line("");
    put_line("");
    put_line("");
    put_line(" TOTAL BDATES: " & INTEGER'image(bd'length));
    put_line("");
    for i in bd'range loop
      put_line(" NAME: " & bd(i).name );
      put_line(" DAY  : " & INTEGER'image(bd(i).bdate.day) );
      put_line(" MON  : " & MONTH_NAME'image( bd(i).bdate.month) );
      put_line(" YEAR : " & INTEGER'image(bd(i).bdate.year) );
      put_line("");
      put_line("");
    end loop;
  end print_bday;
 
 
  bdays : BD_ARR(1..3);
 
  
begin


  bdays(1) := ( ('A','n','d','r','e','a','s',others=>' '),(6,Nov,1988 ) ); 
  bdays(2) := ( ('X','r','i','s','t','i','n','a',others=>' '), (26,Mar,1995 ) ); 
  bdays(3) := ( ('M','a','r','i','a',others=>' ' ), (27,Mar,1995 ) ); 

  print_bday( bdays );


end date;
