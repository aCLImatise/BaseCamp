class: CommandLineTool
id: _water.cwl
inputs:
- id: in_gap_open
  doc: "float      [10.0 for any sequence] The gap open penalty\nis the score taken\
    \ away when a gap is\ncreated. The best value depends on the\nchoice of comparison\
    \ matrix. The default\nvalue assumes you are using the EBLOSUM62\nmatrix for protein\
    \ sequences, and the\nEDNAFULL matrix for nucleotide sequences.\n(Number from\
    \ 0.000 to 100.000)"
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: in_gap_extend
  doc: "float      [0.5 for any sequence] The gap extension\npenalty is added to the\
    \ standard gap penalty\nfor each base or residue in the gap. This\nis how long\
    \ gaps are penalized. Usually you\nwill expect a few long gaps rather than many\n\
    short gaps, so the gap extension penalty\nshould be lower than the gap penalty.\
    \ An\nexception is where one or both sequences are\nsingle reads with possible\
    \ sequencing\nerrors in which case you would expect many\nsingle base gaps. You\
    \ can get this result by\nsetting the gap open penalty to zero (or\nvery low)\
    \ and using the gap extension\npenalty to control gap scoring. (Number from\n\
    0.000 to 10.000)"
  type: boolean
  inputBinding:
    prefix: -gapextend
- id: in_data_file
  doc: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean
  inputBinding:
    prefix: -datafile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _water
