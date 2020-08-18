class: CommandLineTool
id: ../../../samtools_cat.cwl
inputs:
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_two_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- cat
