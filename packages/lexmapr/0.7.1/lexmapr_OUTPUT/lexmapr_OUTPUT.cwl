class: CommandLineTool
id: lexmapr_OUTPUT.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_no_cache
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --no-cache
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_o
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lexmapr:0.7.1--py36heb1dbbb_0
cwlVersion: v1.1
baseCommand:
- lexmapr
- OUTPUT
