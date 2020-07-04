class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bwt_index.cwl
inputs:
- id: ref_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: my_ref
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- bwt_index
