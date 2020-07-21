class: CommandLineTool
id: ../../../mega_reads_assemble_ref.sh.cwl
inputs:
- id: m
  doc: ''
  type: File
  inputBinding:
    prefix: -m
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: a
  doc: ''
  type: File
  inputBinding:
    prefix: -a
- id: mega_reads_assemble_i_ref_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mega_reads_assemble_ref.sh
