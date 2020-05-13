class: CommandLineTool
id: pslStats_statsOut.cwl
inputs:
- id: psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: stats_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslStats
- statsOut
