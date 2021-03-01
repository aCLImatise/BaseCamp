class: CommandLineTool
id: HiLine_save_stats.cwl
inputs:
- id: in_location_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HiLine
- save-stats
