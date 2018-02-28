Uses Crt, Dos;

const mgh   : array[1..14] of char = ( 'e', 'u', 'i', 'o', 'a', 'î', 'Å', '¢', 'ã', '£', 'Ç', '†', '˚', '°');
      msh   : array[1..21] of char = ( 'q', 'w', 'r', 't', 'z', 'p', 's', 'd',
      'f', 'g', 'h', 'j', 'k', 'l', 'y', 'x', 'c', 'v', 'b', 'n', 'm' );
      chr   : array[1..28] of char = ( '', '"', '+', '!', '%', '/', '=', '(',
      ')', '\', '|', '[', ']', '$', '·', '<', '>', '#', '&', '@', '{', '}',
      ';', '*', '-', ',', '.', '-' );

Const Keys  : Array[1..110] of Char = ('0','1','2','3','4','5','6','7','8'
      ,'9','î','Å','¢','q','w','e','r','t','z','u','i','o','p','ã','£','a'
      ,'s','d','f','g','h','j','k','l','Ç','†','˚','°','y','x','c','v','b'
      ,'n','m',',','.','-','''','"','+','!','%','/','=','(',')','ô','ö'
      ,'‡','Q','W','E','R','T','Z','U','I','O','P','ä','È','A','S','D','F'
      ,'G','H','J','K','L','ê','µ','Î','÷','Y','X','C','V','B','N','M','?'
      ,':','_','*','\','|','<','>','#','&','@','{','}',';','[',']','$','~');

Var k, str: string;
    k1, k2, c: char;
    I, J: Integer;
    D: DateTime;
    H, M, S, S100: Word;
    T, T1, T2: LongInt;

BEGIN
  ClrScr;
  RandomIze;
  GotoXY(30,12);
  TextColor(White);

  k := '';
  For I:=1 To 20 Do
    Begin
      k1:=mgh[Random(5)+1];
      k2:=msh[Random(20)+1];
      k := k + k1 + k2;
    End;
  GotoXY(20,12);

  Writeln(k);
  writeln( 'press X to start typing' );

  c := readkey;
  GetTime(H, M, S, S100);
  D.Hour:=H;
  D.Min:=M;
  D.Sec:=S;
  PackTime(D, T1);
  GotoXY(1,13);
  writeln( '                                                        ' );
  GotoXY(20,13);
  readln( str );

  GetTime(H, M, S, S100);
  D.Hour:=H;
  D.Min:=M;
  D.Sec:=S;
  PackTime(D, T2);

  TextColor(LightGreen);
  GotoXY(1,WhereY+1);

  T:=T2-T1;
  UnPackTime(T, D);
  if k = str then writeln( 'success' );
  WriteLn('Time: ', D.Min,':',D.Sec);
  readkey;
END.