class: CommandLineTool
id: supermatcher.cwl
inputs:
- id: in_gap_open
  doc: "float      [10.0 for any sequence type] Gap opening\npenalty (Number from\
    \ 0.000 to 100.000)"
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: in_gap_extend
  doc: "float      [0.5 for any sequence type] Gap extension\npenalty (Number from\
    \ 0.000 to 10.000)"
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
- id: in_min_score
  doc: "float      [0] Minimum alignment score to report an\nalignment. (Number 0.000\
    \ or more)"
  type: boolean
  inputBinding:
    prefix: -minscore
- id: in_width
  doc: integer    [16] Alignment width (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -width
- id: in_word_len
  doc: "integer    [6] Word length for initial matching\n(Integer 3 or more)"
  type: boolean
  inputBinding:
    prefix: -wordlen
- id: in_errfile
  doc: "outfile    [supermatcher.error] Error file to be\nwritten to for failed alignments"
  type: boolean
  inputBinding:
    prefix: -errfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- supermatcher
