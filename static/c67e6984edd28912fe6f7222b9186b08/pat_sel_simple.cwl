class: CommandLineTool
id: ../../../pat_sel_simple.cwl
inputs:
- id: no_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pat_sel_simple
