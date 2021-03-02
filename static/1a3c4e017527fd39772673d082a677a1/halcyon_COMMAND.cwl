class: CommandLineTool
id: halcyon_COMMAND.cwl
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyhalcyon:0.1.1--py_0
cwlVersion: v1.1
baseCommand:
- halcyon
- COMMAND
