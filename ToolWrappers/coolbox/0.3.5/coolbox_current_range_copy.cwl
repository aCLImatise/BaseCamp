class: CommandLineTool
id: coolbox_current_range_copy.cwl
inputs:
- id: in_command_vertical_line_index
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
  dockerPull: quay.io/biocontainers/coolbox:0.3.5--py_0
cwlVersion: v1.1
baseCommand:
- coolbox
- current_range
- copy
