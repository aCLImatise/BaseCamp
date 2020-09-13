class: CommandLineTool
id: ../../../fastafetch.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: --fasta
- id: in_index
  doc: ''
  type: File
  inputBinding:
    prefix: --index
- id: in_fos_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fosn
- id: in_query
  doc: ''
  type: string
  inputBinding:
    prefix: --query
- id: in_silent
  doc: ''
  type: boolean
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastafetch
