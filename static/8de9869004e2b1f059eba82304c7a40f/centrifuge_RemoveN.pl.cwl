class: CommandLineTool
id: centrifuge_RemoveN.pl.cwl
inputs:
- id: in_a_dot_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_xxx_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0
cwlVersion: v1.1
baseCommand:
- centrifuge-RemoveN.pl
