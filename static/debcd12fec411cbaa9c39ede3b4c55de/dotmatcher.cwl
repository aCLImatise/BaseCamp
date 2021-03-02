class: CommandLineTool
id: dotmatcher.cwl
inputs:
- id: in_matrix_file
  doc: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean?
  inputBinding:
    prefix: -matrixfile
- id: in_window_size
  doc: "integer    [10] Window size over which to test\nthreshold (Integer 3 or more)"
  type: boolean?
  inputBinding:
    prefix: -windowsize
- id: in_threshold
  doc: integer    [23] Threshold (Integer 0 or more)
  type: boolean?
  inputBinding:
    prefix: -threshold
- id: in_stretch
  doc: toggle     [N] Display a non-proportional graph
  type: boolean?
  inputBinding:
    prefix: -stretch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dotmatcher
