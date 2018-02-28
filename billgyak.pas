Uses Crt, Dos;

Const Keys  : Array[1..110] of Char = ('0','1','2','3','4','5','6','7','8'
      ,'9','î','Å','¢','q','w','e','r','t','z','u','i','o','p','ã','£','a'
      ,'s','d','f','g','h','j','k','l','Ç','†','˚','°','y','x','c','v','b'
      ,'n','m',',','.','-','''','"','+','!','%','/','=','(',')','ô','ö'
      ,'‡','Q','W','E','R','T','Z','U','I','O','P','ä','È','A','S','D','F'
      ,'G','H','J','K','L','ê','µ','Î','÷','Y','X','C','V','B','N','M','?'
      ,':','_','*','\','|','<','>','#','&','@','{','}',';','[',']','$','~');

Var C, K: Char;
    G, B, I, J: Integer;
    D: DateTime;
    H, M, S, S100: Word;
    T, T1, T2: LongInt;

BEGIN
  ClrScr;
  RandomIze;
  GotoXY(40,12);
  TextColor(White);
  G:=0; B:=0;
  GetTime(H, M, S, S100);
  D.Hour:=H;
  D.Min:=M;
  D.Sec:=S;
  PackTime(D, T1);
  For I:=1 To 20 Do
    Begin
      K:=Keys[Random(110)];
      GotoXY(40,12);
      Write(K);
      C:=ReadKey;
      If C=#27 Then Halt;
      If C=K Then Inc(G) Else Inc(B)
    End;
  GetTime(H, M, S, S100);
  D.Hour:=H;
  D.Min:=M;
  D.Sec:=S;
  PackTime(D, T2);
  TextColor(LightGreen);
  GotoXY(1,WhereY+1);
  WriteLn('Good press: ', G, '      Bad press: ', B);
  T:=T2-T1;
  UnPackTime(T, D);
  WriteLn('Time: ', D.Min,':',D.Sec);
  C:=ReadKey;
END.