class: CommandLineTool
id: merger.cwl
inputs:
- id: in_data_file
  doc: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean
  inputBinding:
    prefix: -datafile
- id: in_gap_open
  doc: "float      [@($(acdprotein)? 50.0 : 50.0 )] Gap opening\npenalty (Number from\
    \ 0.000 to 100.000)"
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: in_gap_extend
  doc: "float      [@($(acdprotein)? 5.0 : 5.0)] Gap extension\npenalty (Number from\
    \ 0.000 to 10.000)"
  type: boolean
  inputBinding:
    prefix: -gapextend
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merger
