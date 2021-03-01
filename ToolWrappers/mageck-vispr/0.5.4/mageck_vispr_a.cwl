class: CommandLineTool
id: mageck_vispr_a.cwl
inputs:
- id: in_mage_ck_vis_pr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_comprehensive
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_quality
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_control
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mageck-vispr
- a
