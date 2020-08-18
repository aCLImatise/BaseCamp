class: CommandLineTool
id: ../../../nw_stats_filename|_.cwl
inputs:
- id: format_l_default
  doc: '[lc]: format in lines (l) or columns (c). Default is l.'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_stats
- filename|-
