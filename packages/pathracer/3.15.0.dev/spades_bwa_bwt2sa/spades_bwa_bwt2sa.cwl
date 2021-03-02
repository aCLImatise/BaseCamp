class: CommandLineTool
id: spades_bwa_bwt2sa.cwl
inputs:
- id: in_i
  doc: ''
  type: long?
  inputBinding:
    prefix: -i
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bwt_two_sa
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_in_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_dots_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0
cwlVersion: v1.1
baseCommand:
- spades-bwa
- bwt2sa
