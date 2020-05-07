class: CommandLineTool
id: pslStats_psl.cwl
inputs:
- id: stats_out
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pslStats
- psl
