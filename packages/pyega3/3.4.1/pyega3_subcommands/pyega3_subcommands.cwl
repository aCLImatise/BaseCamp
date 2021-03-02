class: CommandLineTool
id: pyega3_subcommands.cwl
inputs:
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_sf
  doc: ''
  type: File?
  inputBinding:
    prefix: -sf
- id: in_cf
  doc: ''
  type: File?
  inputBinding:
    prefix: -cf
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_pye_ga_three
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyega3:3.4.1--py_0
cwlVersion: v1.1
baseCommand:
- pyega3
- subcommands
