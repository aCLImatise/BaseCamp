class: CommandLineTool
id: shannon_cpp.cwl
inputs:
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_see
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shannon_cpp
