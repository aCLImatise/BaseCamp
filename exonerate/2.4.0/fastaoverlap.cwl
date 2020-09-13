class: CommandLineTool
id: ../../../fastaoverlap.cwl
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
- id: in_chunk
  doc: ''
  type: boolean
  inputBinding:
    prefix: --chunk
- id: in_jump
  doc: ''
  type: boolean
  inputBinding:
    prefix: --jump
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastaoverlap
