class: CommandLineTool
id: dagchainer.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -F
- id: in_d
  doc: ''
  type: long?
  inputBinding:
    prefix: -D
- id: in_s
  doc: ''
  type: long?
  inputBinding:
    prefix: -S
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -E
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -O
- id: in_g
  doc: ''
  type: long?
  inputBinding:
    prefix: -G
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dagchainer:r120920--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- dagchainer
