class: CommandLineTool
id: ../../../fastasort.cwl
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
- id: in_check
  doc: ''
  type: boolean
  inputBinding:
    prefix: --check
- id: in_key
  doc: ''
  type: string
  inputBinding:
    prefix: --key
- id: in_reverse
  doc: ''
  type: boolean
  inputBinding:
    prefix: --reverse
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastasort
