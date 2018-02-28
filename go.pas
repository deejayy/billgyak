Program Keyboard;

Uses    Crt, Dos;

Var     Ch: Char;
        I : Integer;
        J : Integer;
        S : String;
        G, B : Byte;
        R : Integer;
        DT : DateTime;
        Sec100 : Word;
        Time, Time1, Time2: LongInt;
        {    Year,Month,Day,Hour,Min,Sec: Word    }


Procedure Test;
  Begin
    For J:=1 To 10 Do
      Begin
        GotoXY(40,12);
        R:=Random(25)+97;
        S:=Chr(R);
        Write(Chr(R));
        Ch:=ReadKey;
        If Ch=S Then Inc(G) Else Inc(B);
      End;
  End;

Begin
  ClrScr;
  RandomIze;
  For I:=1 To 5 Do
    Begin
      Time:=0;
      Time1:=0;
      Time2:=0;
      GetTime(DT.Hour,DT.Min,DT.Sec,Sec100);
      PackTime(DT, Time1);
      Test;
      GetTime(DT.Hour,DT.Min,DT.Sec,Sec100);
      PackTime(DT, Time2);
      Time:=Time2-Time1;
      UnPackTime(Time, DT);
      GotoXY(1,I+1);
      WriteLn('J¢: ',G,'           Rossz: ',B,'         Id“: ',DT.Min,':',DT.Sec);
    End;
End.