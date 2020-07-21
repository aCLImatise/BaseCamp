class: CommandLineTool
id: ../../../addrg.cwl
inputs:
- id: file_dot_bam
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: rg_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- addrg
