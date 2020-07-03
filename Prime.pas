Program Prime;
Uses Crt;

Var
    n : Integer;

    Function IsPrime(n : Integer) : Boolean;
    Var
       Count : Integer;
       i     : Integer;
    Begin
      If n <= 1 Then
        Begin
          IsPrime := False;
          Exit;
        End
      Else If n = 2 Then
        Begin
          IsPrime := True;
          Exit;
        End;

      Count := 0;
      For i := 2 To Round(Sqrt(n)) Do
      Begin
        If (n Mod i) = 0 Then
        Begin
          Count := Count + 1;
        End;
      End;

      If Count > 0 Then
        Begin
          IsPrime := False;
        End
      Else
        Begin
          IsPrime := True;
        End;
    End;

Begin
    ClrScr;
    WriteLn('Kiem tra 1 so co phai la so nguyen to hay khong.');

    Write('Nhap vao 1 so nguyen: ');
    ReadLn(n);

    If IsPrime(n) Then
      Begin
        WriteLn('So ', n, ' la so nguyen to');
      End
    Else
      Begin  
        WriteLn('So ', n, ' KHONG PHAI la so nguyen to');
      End;

    ReadKey;
End.
