class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samtools_sort.cwl
inputs:
- id: on
  doc: ''
  type: boolean
  inputBinding:
    prefix: -on
- id: m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- sort
