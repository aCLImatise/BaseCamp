class: CommandLineTool
id: bioconvert_stats.cwl
inputs:
- id: bio_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: no_plot
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-plot
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconvert_stats
