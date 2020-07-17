class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqmagick_help_action.cwl
inputs:
- id: var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: seq_magick
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- help
- action
