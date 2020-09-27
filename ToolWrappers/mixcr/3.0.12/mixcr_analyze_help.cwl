class: CommandLineTool
id: mixcr_analyze_help.cwl
inputs:
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_analyze
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_command_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mixcr
- analyze
- help
