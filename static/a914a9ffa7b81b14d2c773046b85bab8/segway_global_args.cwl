class: CommandLineTool
id: segway_global_args.cwl
inputs:
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/segway:3.0.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- segway
- global_args
