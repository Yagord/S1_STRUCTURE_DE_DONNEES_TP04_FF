program SD_TP04_EX01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_SD_TP04_EX01_DATE in 'Unit_SD_TP04_EX01_DATE.pas';

Var
  j : Tjour;
  m : Tmois;

begin

  j := Lundi;

  m := Novembre;

  afficherJour(jourSuivant(j));

  write(#13#10);

  afficherJour(jourPrecedent(j));

  write(#13#10);

  afficherMois(moisSuivant(m));

  write(#13#10);

  afficherMois(moisPrecedent(m));

  write(#13#10);

  writeln(anneeBissextile(2020));

  write(#13#10);

  write('Le nombre de jours dans le mois ');
  afficherMois(m);
  writeln(' est de ', nbJourMois(m, 2016));

  readln;

end.
