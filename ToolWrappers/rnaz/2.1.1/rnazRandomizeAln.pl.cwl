class: CommandLineTool
id: rnazRandomizeAln.pl.cwl
inputs:
- id: in_window
  doc: "Long alignment blocks should be shuffled locally in order to\nmaintain local\
    \ characteristics of the alignment. Therefore\nalignments can be shuffled in windows.\
    \ You can specify here the\nsize of a window and the offset. Defaults are window=120\
    \ and\nslide=120, i.e. the alignments are shuffled in non-overlapping\nwindows\
    \ of 120 columns."
  type: long?
  inputBinding:
    prefix: --window
- id: in_level
  doc: "The shuffling algorithm tries to mantain local conservation\npatterns, i.e.\
    \ it shuffles only columns of the same degree of\nconservation. This becomes limiting\
    \ if you have many sequences\nin your alignment. Therfore you can choose the level\
    \ of ``coarse\ngraining\" with this option.\nTo decide which columns have the\
    \ same degree of conservation,\nthe mean pairwise identity (MPI) of each column\
    \ is calculated\nand finally only columns of the same value are shuffled. You\
    \ can\nadjust the rounding of the MPI and thus the ``coarse graining\"\nlevel\
    \ with this option. If you have two columns with say 0.52\nand 0.48 MPI you get:\n\
    level 0: 1 and 0\nlevel 1: 50 and 50\nlevel 2: 52 and 48\nSo on level 0 you only\
    \ have ``conserved\" (MPI > 0.5) and\n``non-conserved\" (MPI < 0.5) columns while\
    \ on level 2 you need\nalmost exactly the same MPI to shuffle two columns.\nDefault\
    \ value is 2."
  type: double?
  inputBinding:
    prefix: --level
- id: in_man
  doc: Prints the manual page and exits.
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rnazRandomizeAln.pl
