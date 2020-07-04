class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lavToAxt.cwl
inputs:
- id: in_dot_lav
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
- id: out_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- lavToAxt
