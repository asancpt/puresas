DATA WORK.Indometh;
  INFILE 'C:/Users/mdlhs/asancpt/puresas/docs/reference/Indometh.csv' DLM=',' FIRSTOBS=2 MISSOVER DSD LRECL=32767;
  INPUT Subject :$1. time :$4. conc :$4.;
RUN;

LIBNAME T1 XPORT 'C:\Users\mdlhs\asancpt\puresas\docs\reference\Indometh.xpt';
PROC COPY IN=WORK OUT=T1; SELECT Indometh; RUN;
LIBNAME OUT 'C:\Users\mdlhs\asancpt\puresas\docs\reference';
DATA OUT.Indometh;
  SET WORK.Indometh;
Run;


DATA WORK.Theoph;
  INFILE 'C:/Users/mdlhs/asancpt/puresas/docs/reference/Theoph.csv' DLM=',' FIRSTOBS=2 MISSOVER DSD LRECL=32767;
  INPUT Subject :$2. Wt :$4. Dose :$4. Time :$5. conc :$5.;
RUN;

LIBNAME T2 XPORT 'C:\Users\mdlhs\asancpt\puresas\docs\reference\Theoph.xpt';
PROC COPY IN=WORK OUT=T2; SELECT Theoph; RUN;
LIBNAME OUT 'C:\Users\mdlhs\asancpt\puresas\docs\reference';
DATA OUT.Theoph;
  SET WORK.Theoph;
Run;


