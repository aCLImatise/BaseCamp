class: CommandLineTool
id: ../../../fastavalidcds.cwl
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
- id: in_explain
  doc: ''
  type: boolean
  inputBinding:
    prefix: --explain
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastavalidcds
