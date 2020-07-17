class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bgt_fmf.cwl
inputs:
- id: load_entire_fmf
  doc: load the entire FMF into RAM
  type: boolean
  inputBinding:
    prefix: -m
- id: only_output_name
  doc: only output the row name (the 1st column)
  type: boolean
  inputBinding:
    prefix: -n
- id: mn
  doc: ''
  type: boolean
  inputBinding:
    prefix: -mn
- id: fmf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_fmf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: condition
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bgt
- fmf
