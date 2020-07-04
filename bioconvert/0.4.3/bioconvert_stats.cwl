class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bioconvert_stats.cwl
inputs:
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
- id: bio_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconvert_stats
