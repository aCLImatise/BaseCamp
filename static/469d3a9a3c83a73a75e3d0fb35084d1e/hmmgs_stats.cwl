class: CommandLineTool
id: hmmgs_stats.cwl
inputs:
- id: in_bloom_filter_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bloom_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmgs
- stats
