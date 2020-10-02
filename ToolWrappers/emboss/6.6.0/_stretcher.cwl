class: CommandLineTool
id: _stretcher.cwl
inputs:
- id: in_data_file
  doc: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean
  inputBinding:
    prefix: -datafile
- id: in_gap_open
  doc: "integer    [12 for protein, 16 for nucleic] Gap penalty\n(Positive integer)"
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: in_gap_extend
  doc: "integer    [2 for protein, 4 for nucleic] Gap length\npenalty (Positive integer)"
  type: boolean
  inputBinding:
    prefix: -gapextend
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _stretcher
