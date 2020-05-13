class: CommandLineTool
id: summarize.cwl
inputs:
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: g
  doc: ': Background GC content '
  type: string
  inputBinding:
    prefix: -g
- id: w
  doc: ': Do GSC weighting '
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize
