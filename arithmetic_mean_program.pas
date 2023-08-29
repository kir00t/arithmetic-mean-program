program arithmeticmean;
uses crt;
// declare your data types //
type
  vector = array of real;
  number = integer;
var
  n, j : number;
  score : vector;
  
// procedures //
procedure save_score();
var value_1: real;
begin
     j:=1;
     WriteLn('choose a number between 1 - ???: ');
     ReadLn(n);
     SetLength(score, n+1);
     ClrScr();
     repeat
     write('write your',' ',n,' ','value: ');
     Read(value_1);
     clrscr();
     Score[j] := value_1;
     j := j + 1;
     n := n - 1;
     until n < 1;
     
end;

procedure average(var score_1 : vector);
var tmp, sum: real;
begin
    clrscr();
    sum := 0;
    for j:=1 to j-1 do
    begin
    tmp := score_1[j];
    sum := sum + tmp;
    clrscr();
    end;
    WriteLn('its arithmetic mean is: ',Round(sum/3));
end;

// execute //
begin
    clrscr();
    save_score();
    average(score);
end .
