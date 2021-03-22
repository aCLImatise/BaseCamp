class: CommandLineTool
id: refgenie_subscribe_reading.cwl
inputs:
- id: in_s
  doc: ''
  type: string[]
  inputBinding:
    prefix: -s
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_skip_read_lock
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --skip-read-lock
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_ref_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_subscribe
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
  dockerPull: quay.io/biocontainers/refgenie:0.10.0--py_0
cwlVersion: v1.1
baseCommand:
- refgenie
- subscribe
- reading
