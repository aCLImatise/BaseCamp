class: CommandLineTool
id: ../../../fastacomposition.cwl
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
- id: in_ignorecase
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ignorecase
- id: in_separate
  doc: ''
  type: boolean
  inputBinding:
    prefix: --separate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastacomposition
