class: CommandLineTool
id: pypgatk_cli_proteindb.cwl
inputs:
- id: in_p_ypg_atk_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pypgatk:0.0.19--py_0
cwlVersion: v1.1
baseCommand:
- pypgatk_cli
- proteindb
