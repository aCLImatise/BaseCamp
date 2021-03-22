class: CommandLineTool
id: guppy_check.cwl
inputs:
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_check
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_s
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
  dockerPull: quay.io/biocontainers/sepp:4.5.1--py37_0
cwlVersion: v1.1
baseCommand:
- guppy
- check
