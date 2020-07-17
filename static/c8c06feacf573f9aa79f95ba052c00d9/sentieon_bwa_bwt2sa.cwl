class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sentieon_bwa_bwt2sa.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bwt_two_sa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dots_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- bwt2sa
