class: CommandLineTool
id: bl_insert_stats.cwl
inputs:
- id: insert_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: specify the SAM input file
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: specify the STATS output file
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: MAX_INSERT bin allocated for the histogram
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-insert-stats
