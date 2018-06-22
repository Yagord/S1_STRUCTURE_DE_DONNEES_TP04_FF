unit Unit_SD_TP04_EX02_FRACTION;

interface

  Type TFraction = record
    numerateur : Integer;
    denominateur : Integer;
  end;

  Function addition (f1, f2 : TFraction) : TFraction;

  Function soustraction (f1, f2 : TFraction) : TFraction;

  Function multiplication (f1, f2 : TFraction) : TFraction;

  Function division (f1, f2 : TFraction) : TFraction;

  Function egale (f1, f2 : TFraction) : Boolean;

  Function superieur (f1, f2 : TFraction) : Boolean;

  Procedure afficherFraction (f : TFraction);

implementation

  Function addition (f1, f2 : TFraction) : TFraction;

  Var
  fRes : TFraction;

  begin

    fRes.numerateur := (f1.numerateur * f2.denominateur) + (f2.numerateur * f1.denominateur);

    fRes.denominateur := f1.denominateur * f2.denominateur;

    Result := fRes;

  end;

  Function soustraction (f1, f2 : TFraction) : TFraction;

  Var
  fRes : TFraction;

  begin

    fRes.numerateur := (f1.numerateur * f2.denominateur) - (f2.numerateur * f1.denominateur);

    fRes.denominateur := f1.denominateur * f2.denominateur;

    Result := fRes;

  end;

  Function multiplication (f1, f2 : TFraction) : TFraction;

  Var
  fRes : TFraction;

  begin

    fRes.numerateur := f1.numerateur * f2.numerateur;

    fRes.denominateur := f1.denominateur * f2.denominateur;

    Result := fRes;

  end;

  Function division (f1, f2 : TFraction) : TFraction;

  Var
  fRes : TFraction;

  begin

    fRes.numerateur := f1.numerateur * f2.denominateur;

    fRes.denominateur := f1.denominateur * f2.numerateur;

    Result := fRes;

  end;

  Function egale (f1, f2 : TFraction) : Boolean;

  begin

    Result := ((f1.numerateur mod f2.numerateur) = 0) AND ((f1.denominateur mod f2.denominateur) = 0)

  end;

  Function superieur (f1, f2 : TFraction) : Boolean;

  Var
    res : Boolean;

  begin

    if f1.denominateur = f2.denominateur then
    begin
      if f1.numerateur > f2.numerateur then
      begin
        res := True;
      end
      else
      begin
        res := False;
      end;
    end

    else
    begin

    end;



  end;

  Procedure afficherFraction (f : TFraction);

  begin

    writeln(f.numerateur, '/', f.denominateur);

  end;


end.
