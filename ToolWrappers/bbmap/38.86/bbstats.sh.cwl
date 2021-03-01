class: CommandLineTool
id: bbstats.sh.cwl
inputs:
- id: in_stats_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in
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
- bbstats.sh
