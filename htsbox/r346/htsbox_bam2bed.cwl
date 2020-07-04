class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_bam2bed.cwl
inputs:
- id: se
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Se
- id: bam_two_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bam2bed
