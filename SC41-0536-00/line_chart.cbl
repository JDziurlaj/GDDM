       IDENTIFICATION DIVISION.

       PROGRAM-ID. CHART.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM-S38.
       OBJECT-COMPUTER. IBM-S38.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  LINENUM           PIC S9(5) COMP-4.
       77  POINTS            PIC S9(5) COMP-4.
       77  ATTYPE            PIC S9(5) COMP-4.
       77  ATMOD             PIC S9(5) COMP-4.
       77  KOUNT             PIC S9(5) COMP-4.
       77  FSINIT            PIC X(8)     VALUE "FSINIT".
       77  CHPLOT            PIC X(8)     VALUE "CHPLOT".
       77  FSTERM            PIC X(8)     VALUE "FSTERM".
       77  ASREAD            PIC X(8)     VALUE "ASREAD".
       01  X-ARRAY.
           03  AX  OCCURS 5 TIMES PIC S9(5)V9 COMP-3.
       01  Y-ARRAY.
           03  AY  OCCURS 1 TIMES PIC S9(5)V9 COMP-3.
       PROCEDURE DIVISION.
       MAIN-ROUTINE.
           PERFORM TEST-PARAGRAPH.
       TEST-PARAGRAPH.
           MOVE 1 TO AX (1).
           MOVE 2 TO AX (2).
           MOVE 3 TO AX (3).
           MOVE 4 TO AX (4).
           MOVE 5 TO AX (5).
           MOVE 5 TO AY (1).
           MOVE 3 TO AY (2).
           MOVE 5 TO AY (3).
           MOVE 5 TO AY (4).
           MOVE 11 TO AY (5).
           MOVE 8 TO AY (6).
           MOVE 13 TO AY (7).
           MOVE 6 TO AY (8).
           MOVE 1 TO AY (9).
           MOVE 7 TO AY (1).
           CALL "GDDM" USING FSINIT.
           MOVE 2 TO LINENUM.
           MOVE 5 TO POINTS.
           CALL "GDDM" USING CHPLOT, LINENUM, POINTS, AX, AY
           CALL "GDDM" USING ASREAD, ATTYPE, ATMOD, KOUNT.
           CALL "GDDM" USING FSTERM.
           STOP RUN. 