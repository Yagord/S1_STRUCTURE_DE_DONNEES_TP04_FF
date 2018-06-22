program SD_TP04_EX02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_SD_TP04_EX02_FRACTION in 'Unit_SD_TP04_EX02_FRACTION.pas';

Var
  f1 : TFraction;
  f2 : TFraction;
  fRes : TFraction;

begin

  f1.numerateur := 3;

  f1.denominateur := 3;

  f2.numerateur := 9;

  f2.denominateur := 9;


  fRes := addition(f1, f2);

  writeln(fRes.numerateur, '/', fRes.denominateur);


  fRes := soustraction(f1, f2);

  writeln(fRes.numerateur, '/', fRes.denominateur);


  fRes := multiplication(f1, f2);

  writeln(fRes.numerateur, '/', fRes.denominateur);


  fRes := division(f1, f2);

  writeln(fRes.numerateur, '/', fRes.denominateur);


  afficherFraction(fRes);


  writeln(egale(f1, f2));

  //writeln(superieur(f1, f2));

  readln;

end.
