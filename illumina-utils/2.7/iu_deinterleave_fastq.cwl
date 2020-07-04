class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iu_deinterleave_fastq.cwl
inputs:
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-deinterleave-fastq
