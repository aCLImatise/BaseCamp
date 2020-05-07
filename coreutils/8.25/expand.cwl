class: CommandLineTool
id: expand.cwl
inputs:
- id: initial
  doc: do not convert tabs after non blanks
  type: boolean
  inputBinding:
    prefix: --initial
- id: tabs
  doc: have tabs NUMBER characters apart, not 8
  type: string
  inputBinding:
    prefix: --tabs
- id: tabs
  doc: use comma separated list of explicit tab positions
  type: string
  inputBinding:
    prefix: --tabs
outputs: []
cwlVersion: v1.1
baseCommand:
- expand
