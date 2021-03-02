class: CommandLineTool
id: obgen.cwl
inputs:
- id: in_ff
  doc: select a forcefield
  type: boolean?
  inputBinding:
    prefix: -ff
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openbabel:3.1.1
cwlVersion: v1.1
baseCommand:
- obgen
