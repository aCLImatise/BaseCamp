class: CommandLineTool
id: read_group_stats.cwl
inputs:
- id: in_read_group_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- read-group-stats
