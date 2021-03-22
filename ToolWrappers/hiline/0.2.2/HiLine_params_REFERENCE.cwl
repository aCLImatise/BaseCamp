class: CommandLineTool
id: HiLine_params_REFERENCE.cwl
inputs:
- id: in_restriction_sites
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
  dockerPull: quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1
cwlVersion: v1.1
baseCommand:
- HiLine
- params
- REFERENCE
