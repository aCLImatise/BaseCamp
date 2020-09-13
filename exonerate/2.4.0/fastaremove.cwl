class: CommandLineTool
id: ../../../fastaremove.cwl
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
- id: in_remove
  doc: ''
  type: File
  inputBinding:
    prefix: --remove
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastaremove
