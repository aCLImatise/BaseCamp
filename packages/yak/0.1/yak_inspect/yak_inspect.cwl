class: CommandLineTool
id: yak_inspect.cwl
inputs:
- id: in_max_count_effective
  doc: max count (effective with in2.yak) [20]
  type: long?
  inputBinding:
    prefix: -m
- id: in_in_one_dot_yak
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_two_dot_yak
  doc: ''
  type: long?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/yak:0.1--hed695b0_0
cwlVersion: v1.1
baseCommand:
- yak
- inspect
