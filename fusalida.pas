program super_fusalida;
uses wincrt;
var a:array[1..10000] of integer;
    i,j,n,c:integer;
    logic:char;
    metritis:real;         {logo tou oti ws integer den pernei megala noumera}

BEGIN

repeat
 ClrScr;
 randomize;
 writeln('*******************************************************************************');
 writeln('               Gia fusalida 100 noumerwn ------------ pathste 1');
 writeln('               Gia fusalida 1000 noumerwn ----------- pathste 2');
 writeln('               Gia fusalida 10000 noumerwn ---------- pathste 3');
 writeln('*******************************************************************************');
 write('                                Epilogh: ');
 read(n);
 readln;

 metritis:=0;

 if n=1 then
 begin
  for i:=1 to 100 do
  begin
   a[i]:=random(10);
  end;

  for i:=1 to 100 do
  begin
   for j:=100 downto i do
   begin
    if a[i]>a[j] then
    begin
     c:=a[i];
     a[i]:=a[j];
     a[j]:=c;
     metritis:=metritis+1;
    end;
   end;
  end;
 end;

 if n=2 then
 begin
  for i:=1 to 1000 do
  begin
   a[i]:=random(10);
  end;

  for i:=1 to 1000 do
  begin
   for j:=1000 downto i do
   begin
    if a[i]>a[j] then
    begin
     c:=a[i];
     a[i]:=a[j];
     a[j]:=c;
     metritis:=metritis+1;
    end;
   end;
  end;
 end;

 if n=3 then
 begin
  for i:=1 to 10000 do
  begin
   a[i]:=random(10);
  end;

  for i:=1 to 10000 do
  begin
   for j:=10000 downto i do
   begin
    if a[i]>a[j] then
    begin
     c:=a[i];
     a[i]:=a[j];
     a[j]:=c;
     metritis:=metritis+1;
    end;
   end;
  end;
 end;

 writeln;
 writeln('                           Eginan ',metritis:0:0,' sugkiseis');

 case round(metritis) of
   0..1000:
   begin
    writeln('                            @ ligo a3iopisto @');
   end;
   1000..10000:
   begin
    writeln('                           ~ arketa a3iopisto ~');
   end;
   else
   begin
    writeln('                           !!! polu a3iopisto !!!');
   end;
 end;

 writeln('*******************************************************************************');

 write('             ama 8es na stamathseis pata "n" alliws pata oti allo 8es: ');
 read(logic);
 readln;
until logic='n';

END.
