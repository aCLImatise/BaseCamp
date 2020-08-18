class: CommandLineTool
id: ../../../checkm_tetra_output_file.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: check_m
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tetra
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- tetra
- output_file
