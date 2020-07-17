class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pat_sel_in_pat_file.cwl
inputs:
- id: pat_sel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: no_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_pat_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- pat_sel
- in_pat_file
