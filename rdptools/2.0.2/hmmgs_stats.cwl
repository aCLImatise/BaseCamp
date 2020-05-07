class: CommandLineTool
id: hmmgs_stats.cwl
inputs:
- id: bloom_filter_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bloom_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmgs
- stats
