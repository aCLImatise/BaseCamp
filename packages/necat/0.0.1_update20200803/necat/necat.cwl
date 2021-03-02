class: CommandLineTool
id: necat.cwl
inputs:
- id: in_correct_vertical_line_assemble_vertical_line_bridge_vertical_line_config
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cfg_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/necat:0.0.1_update20200803--h8b12597_0
cwlVersion: v1.1
baseCommand:
- necat
