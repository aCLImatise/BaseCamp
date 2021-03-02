class: CommandLineTool
id: domino_disabled.cwl
inputs:
- id: in_hone_one_three_three_app
  doc: HD66EA44
  type: long
  inputBinding:
    position: 0
- id: in_kdl_leg_jj
  doc: KNN77G88
  type: string
  inputBinding:
    position: 1
- id: in_zero_zero_bb_five_five_mm
  doc: OO299RRC
  type: long
  inputBinding:
    position: 2
- id: in_ff_two_qq_iic
  doc: Initial
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0
cwlVersion: v1.1
baseCommand:
- domino
- disabled
