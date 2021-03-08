class: CommandLineTool
id: planemo_config_init.cwl
inputs:
- id: in_project
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
  dockerPull: quay.io/biocontainers/planemo:0.74.3--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- config_init
