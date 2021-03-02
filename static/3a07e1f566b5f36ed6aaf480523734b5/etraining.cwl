class: CommandLineTool
id: etraining.cwl
inputs:
- id: in_species
  doc: ''
  type: string?
  inputBinding:
    prefix: --species
- id: in_train_filename
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
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- etraining
