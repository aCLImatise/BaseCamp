class: CommandLineTool
id: ../../../summarize.cwl
inputs:
- id: background_gc_content
  doc: ': Background GC content '
  type: string
  inputBinding:
    prefix: -g
- id: _gsc_weighting
  doc: ': Do GSC weighting '
  type: boolean
  inputBinding:
    prefix: -w
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize
