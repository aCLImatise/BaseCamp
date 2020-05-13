class: CommandLineTool
id: uchime.cwl
inputs:
- id: x_a
  doc: help
  type: double
  inputBinding:
    prefix: --xa
- id: x_drop_g
  doc: help
  type: double
  inputBinding:
    prefix: --xdrop_g
- id: x_drop_nw
  doc: help
  type: double
  inputBinding:
    prefix: --xdrop_nw
- id: x_drop_u
  doc: help
  type: double
  inputBinding:
    prefix: --xdrop_u
- id: x_drop_ug
  doc: help
  type: double
  inputBinding:
    prefix: --xdrop_ug
- id: x_frame
  doc: help
  type: string
  inputBinding:
    prefix: --xframe
- id: xl_at
  doc: help
  type: boolean
  inputBinding:
    prefix: --xlat
- id: xn
  doc: help
  type: double
  inputBinding:
    prefix: --xn
outputs: []
cwlVersion: v1.1
baseCommand:
- uchime
