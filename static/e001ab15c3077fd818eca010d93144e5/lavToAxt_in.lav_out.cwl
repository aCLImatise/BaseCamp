class: CommandLineTool
id: lavToAxt_in.lav_out.axt.cwl
inputs:
- id: t_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: q_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_a_xt
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- lavToAxt
- in.lav
- out.axt
