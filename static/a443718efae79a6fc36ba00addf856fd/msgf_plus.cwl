class: CommandLineTool
id: msgf_plus.cwl
inputs:
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_x_mx_three_five_zero_zero_m
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Xmx3500M
- id: in_java
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
  dockerPull: quay.io/biocontainers/msgf_plus:2021.01.08--0
cwlVersion: v1.1
baseCommand:
- msgf_plus
