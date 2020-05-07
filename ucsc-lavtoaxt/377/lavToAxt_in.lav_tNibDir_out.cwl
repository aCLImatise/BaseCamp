class: CommandLineTool
id: lavToAxt_in.lav_tNibDir_out.axt.cwl
inputs:
- id: q_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_a_xt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lavToAxt
- in.lav
- tNibDir
- out.axt
