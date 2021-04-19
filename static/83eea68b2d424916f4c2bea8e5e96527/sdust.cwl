class: CommandLineTool
id: sdust.cwl
inputs:
- id: in_t
  doc: ''
  type: long?
  inputBinding:
    prefix: -t
- id: in_w
  doc: ''
  type: long?
  inputBinding:
    prefix: -w
- id: in_in_dot_fa
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
  dockerPull: quay.io/biocontainers/minimap2:2.18--h5bf99c6_0
cwlVersion: v1.1
baseCommand:
- sdust
