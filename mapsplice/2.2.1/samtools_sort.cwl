class: CommandLineTool
id: samtools_sort.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
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
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- sort
