class: CommandLineTool
id: peakachu_window.cwl
inputs:
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -M
- id: in_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_c
  doc: ''
  type: string[]
  inputBinding:
    prefix: -c
- id: in_t
  doc: ''
  type: string[]
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0
cwlVersion: v1.1
baseCommand:
- peakachu
- window
