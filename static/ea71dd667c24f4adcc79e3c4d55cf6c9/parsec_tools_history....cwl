class: CommandLineTool
id: parsec_tools_history....cwl
inputs:
- id: in_parsec
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
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- tools
- history...
