class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_merge.cwl
inputs:
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Q
- id: out_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_two_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_merge
