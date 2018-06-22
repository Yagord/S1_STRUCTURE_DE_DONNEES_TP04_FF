unit Unit_SD_TP04_EX01_DATE;

interface

Type
    Tjour = (Lundi, Mardi, Mercredi, Jeudi, Vendredi, Samedi, Dimanche);
    Tmois = (Janvier, Fevrier, Mars, Avril, Mai, Juin, Juillet, Aout, Septembre, Octobre, Novembre, Decembre);

  Function jourSuivant(j : Tjour): Tjour;

  Function jourPrecedent(j : Tjour): Tjour;

  Function moisSuivant(m : Tmois): Tmois;

  Function moisPrecedent(m : Tmois): Tmois;

  Procedure afficherJour (j : Tjour);

  Procedure afficherMois (m : Tmois);

  Function anneeBissextile (annee : Integer) : Boolean;

  Function nbJourMois (mois : Tmois ; annee : Integer) : Integer;

implementation

  Function jourSuivant(j: Tjour): Tjour;

  Var
    leJour: Tjour;

  begin

    if j = high(Tjour) then
    begin
      leJour := low(Tjour)
    end

    else
    begin
      leJour := Succ(j);
    end;

    Result := lejour;

  end;

  Function jourPrecedent(j: Tjour): Tjour;

  Var
    leJour: Tjour;

  begin

    if j = low(Tjour) then
    begin
      leJour := high(Tjour)
    end

    else
    begin
      leJour := Pred(j);
    end;

    Result := lejour;

  end;

  Function moisSuivant(m: Tmois): Tmois;

  Var
    leMois: Tmois;

  begin

    if m = high(Tmois) then
    begin
      leMois := low(Tmois)
    end

    else
    begin
      leMois := Succ(m);
    end;

    Result := leMois;

  end;

  Function moisPrecedent(m: Tmois): Tmois;

  Var
    leMois: Tmois;

  begin

    if m = low(Tmois) then
    begin
      leMois := high(Tmois)
    end

    else
    begin
      leMois := Pred(m);
    end;

    Result := leMois;

  end;

  Procedure afficherJour(j : Tjour);

  begin

    case j of

      Lundi : write('Lundi');
      Mardi : write('Mardi');
      Mercredi : write('Mercredi');
      Jeudi : write('Jeudi');
      Vendredi : write('Vendredi');
      Samedi : write('Samedi');
      Dimanche : write('Dimanche');

    end;

  end;

  Procedure afficherMois(m : Tmois);

  begin

    case m of

      Janvier : write('Janvier');
      Fevrier : write('Fevrier');
      Mars : write('Mars');
      Avril : write('Avril');
      Mai : write('Mai');
      Juin : write('Juin');
      Juillet : write('Juillet');
      Aout : write('Aout');
      Septembre : write('Septembre');
      Octobre : write('Octobre');
      Novembre : write('Novembre');
      Decembre : write('Decembre');

    end;

  end;

  Function anneeBissextile (annee : Integer) : Boolean;

  Var
    res : Boolean;

  begin

    if annee mod 4 = 0 then
    begin

      if annee mod 100 = 0 then
      begin
        res := False;
      end
      else
      begin
        res := True;
      end;

    end

    else if annee mod 400 = 0 then
    begin
      res := True;
    end

    else
    begin
      res := False;
    end;

    Result := res;

  end;

  Function nbJourMois (mois : Tmois ; annee : Integer) : Integer;

  Var
    nbJour : Integer;

  begin

    case mois of

      Janvier : nbJour := 31;
      Fevrier : nbJour := 28;
      Mars : nbJour := 31;
      Avril : nbJour := 30;
      Mai : nbJour := 31;
      Juin : nbJour := 30;
      Juillet : nbJour := 31;
      Aout : nbJour := 31;
      Septembre : nbJour := 30;
      Octobre : nbJour := 31;
      Novembre : nbJour := 30;
      Decembre : nbJour := 31;

    end;


    if anneeBissextile(annee) = True then
    begin
      nbJour := nbJour + 1;
    end;

    Result := nbJour;


  end;

end.
