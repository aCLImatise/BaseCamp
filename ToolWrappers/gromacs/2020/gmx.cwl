class: CommandLineTool
id: gmx.cwl
inputs:
- id: in_nice
  doc: "<int>              (19)\nSet the nicelevel (default depends on command)"
  type: boolean
  inputBinding:
    prefix: -nice
- id: in_commands
  doc: List of available commands
  type: string
  inputBinding:
    position: 0
- id: in_selections
  doc: Selection syntax and usage
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gmx
