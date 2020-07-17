class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samtools_reheader.cwl
inputs:
- id: in_dot_header_dots_am
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
- samtools
- reheader
