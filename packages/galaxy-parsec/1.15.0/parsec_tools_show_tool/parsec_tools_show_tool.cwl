class: CommandLineTool
id: parsec_tools_show_tool.cwl
inputs:
- id: in_io_details
  doc: whether to get also input and output details
  type: boolean?
  inputBinding:
    prefix: --io_details
- id: in_link_details
  doc: whether to get also link details
  type: boolean?
  inputBinding:
    prefix: --link_details
- id: in_tool_id
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- show_tool
