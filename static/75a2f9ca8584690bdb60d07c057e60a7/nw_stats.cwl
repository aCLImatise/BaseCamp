class: CommandLineTool
id: nw_stats.cwl
inputs:
- id: f
  doc: '[lc]: format in lines (l) or columns (c). Default is l.'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_stats
