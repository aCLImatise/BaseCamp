class: CommandLineTool
id: stride_index.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_algorithm
  doc: "BWT construction algorithm. STR can be:\nsais - induced sort algorithm, slower\
    \ but works for very long sequences\nropebwt - Li's ropebwt algorithm, suitable\
    \ for short reads (<200bp)\nropebwt2 - Li's ropebwt2 algorithm, suitable for short\
    \ and long reads (default)"
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_threads
  doc: 'use NUM threads to construct the index (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_prefix
  doc: write index to file using PREFIX instead of prefix of READSFILE
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_no_reverse
  doc: "suppress construction of the reverse BWT. Use this option when building the\
    \ index\nfor reads that will be error corrected using the k-mer corrector, which\
    \ only needs the forward index"
  type: boolean?
  inputBinding:
    prefix: --no-reverse
- id: in_no_forward
  doc: suppress construction of the forward BWT. Use this option when building the
    forward and reverse index separately
  type: boolean?
  inputBinding:
    prefix: --no-forward
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stride
- index
