class: CommandLineTool
id: stride_index.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: algorithm
  doc: "BWT construction algorithm. STR can be: sais - induced sort algorithm, slower\
    \ but works for very long sequences ropebwt - Li's ropebwt algorithm, suitable\
    \ for short reads (<200bp)  ropebwt2 - Li's ropebwt2 algorithm, suitable for short\
    \ and long reads (default)"
  type: string
  inputBinding:
    prefix: --algorithm
- id: threads
  doc: 'use NUM threads to construct the index (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: prefix
  doc: write index to file using PREFIX instead of prefix of READSFILE
  type: string
  inputBinding:
    prefix: --prefix
- id: no_reverse
  doc: suppress construction of the reverse BWT. Use this option when building the
    index for reads that will be error corrected using the k-mer corrector, which
    only needs the forward index
  type: boolean
  inputBinding:
    prefix: --no-reverse
- id: no_forward
  doc: suppress construction of the forward BWT. Use this option when building the
    forward and reverse index separately
  type: boolean
  inputBinding:
    prefix: --no-forward
outputs: []
cwlVersion: v1.1
baseCommand:
- stride
- index
