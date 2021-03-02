class: CommandLineTool
id: obmm.cwl
inputs:
- id: in_program
  doc: 'v 0.1                '
  type: string
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
- obmm
