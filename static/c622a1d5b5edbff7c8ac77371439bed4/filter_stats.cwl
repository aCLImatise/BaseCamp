class: CommandLineTool
id: filter_stats.pl.cwl
inputs:
- id: filter_stats_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: The psudo-alignment positions tab delimited file
  type: boolean
  inputBinding:
    prefix: --input
- id: all
  doc: When this option is set, the results will include all the entries marked as
    'filtered-invalid'
  type: boolean
  inputBinding:
    prefix: --all
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-stats.pl
