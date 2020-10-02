class: CommandLineTool
id: velocyto_tools_ARGS.cwl
inputs:
- id: in_velo_cyto
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tools
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_args
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
- velocyto
- tools
- ARGS
