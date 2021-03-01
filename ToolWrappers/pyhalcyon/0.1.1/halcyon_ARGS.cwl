class: CommandLineTool
id: halcyon_ARGS.cwl
inputs:
- id: in_halcyon
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
  dockerPull: quay.io/biocontainers/pyhalcyon:0.1.1--py_0
cwlVersion: v1.1
baseCommand:
- halcyon
- ARGS
