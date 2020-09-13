class: CommandLineTool
id: ../../../fastasubseq.cwl
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
- id: in_start
  doc: ''
  type: string
  inputBinding:
    prefix: --start
- id: in_length
  doc: ''
  type: long
  inputBinding:
    prefix: --length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastasubseq
