**Free
      //------------------------------------------------------------------------
      // PROGRAMA.: VTSPGZCID
      // AUTOR....: César Augusto González Loaiza
      // FECHA....: 2021-11-18
      // DESCRIP..: Retorna campaña actual, con base a la compáñia y la zona
      //
      //   - Se crea módulo
      //        CRTSQLRPGI OBJ(VOTREP00/VTSPGZCID) SRCFILE(VOTREP00/QRPGLESRC)
      //                 COMMIT(*NONE) OBJTYPE(*MODULE)
      //                 CLOSQLCSR(*ENDACTGRP) REPLACE(*YES)
      //                 DBGVIEW(*SOURCE)
      //
      //   - Se crea programa
      //          CRTPGM PGM(VOTREP00/VTSPGZCID)
      //                 MODULE(VOTREP00/VTSPGZCID)
      //                 TEXT('Retorna campaña actual')
      //                 ENTMOD(VOTREP00/VTSPGZCID) ACTGRP(SPGZCID)
      //------------------------------------------------------------------------
      CTL-opt OPTIon(*NODEBUGIO);
      CTL-OPT DATEDIT(*YMD);

      DCL-S Wsql Char(600) Inz(' ');
      DCL-S Wcom Char(1) Inz('''');
      DCL-S WLib Char(20) Inz('''');

      //Definiciòn de Prototipos de Trabajo
      DCL-PR MAIN EXTPGM('Main');
        pcia Char(10);
        pZon  Char(3);
        pCamp Char(4);
      END-PR;

      DCL-PI MAIN;
        pcia Char(10);
        pZon  Char(3);
        pCamp Char(4);
      END-PI;

      *InLr = *ON;