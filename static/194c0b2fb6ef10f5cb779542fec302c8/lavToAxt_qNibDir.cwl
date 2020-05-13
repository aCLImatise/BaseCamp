class: CommandLineTool
id: lavToAxt_qNibDir.cwl
inputs:
- id: in_lav
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_a_xt
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- lavToAxt
- qNibDir
