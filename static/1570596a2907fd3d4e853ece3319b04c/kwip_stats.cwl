class: CommandLineTool
id: kwip_stats.cwl
inputs:
- id: hashes
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kwip-stats
