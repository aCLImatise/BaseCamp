class: CommandLineTool
id: obconformer.cwl
inputs:
- id: in_n_steps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_geom_steps
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_force_field
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openbabel:3.1.1
cwlVersion: v1.1
baseCommand:
- obconformer
