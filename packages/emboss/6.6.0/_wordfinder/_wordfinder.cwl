class: CommandLineTool
id: _wordfinder.cwl
inputs:
- id: in_gap_open
  doc: "float      [10.0 for any sequence type] Gap opening\npenalty (Number from\
    \ 0.000 to 1000.000)"
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
- id: in_limit_match
  doc: "integer    [0] Maximum match score (zero for no limit)\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -limitmatch
- id: in_limit_align
  doc: "integer    [0] Maximum alignment length (zero for no\nlimit) (Integer 0 or\
    \ more)"
  type: boolean
  inputBinding:
    prefix: -limitalign
- id: in_low_match
  doc: "integer    [0] Minimum match score (zero for no limit)\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -lowmatch
- id: in_low_align
  doc: "integer    [0] Minimum alignment length (zero for no\nlimit) (Integer 0 or\
    \ more)"
  type: boolean
  inputBinding:
    prefix: -lowalign
- id: in_errfile
  doc: outfile    [wordfinder.error] Error file to be written
  type: boolean
  inputBinding:
    prefix: -errfile
- id: in_to
  doc: 'Advanced (Unprompted) qualifiers: (none)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _wordfinder
