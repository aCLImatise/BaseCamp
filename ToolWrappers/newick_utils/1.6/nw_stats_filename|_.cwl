class: CommandLineTool
id: nw_stats_filename|_.cwl
inputs:
- id: in_format_lines_l
  doc: '[lc]: format in lines (l) or columns (c). Default is l.'
  type: boolean
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_stats
- filename|-
