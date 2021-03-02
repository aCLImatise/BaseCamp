class: CommandLineTool
id: velocyto_tools_COMMAND.cwl
inputs:
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- velocyto
- tools
- COMMAND
