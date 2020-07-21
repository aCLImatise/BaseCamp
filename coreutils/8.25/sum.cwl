class: CommandLineTool
id: ../../../sum.cwl
inputs:
- id: use_sum_algorithm
  doc: use BSD sum algorithm, use 1K blocks
  type: boolean
  inputBinding:
    prefix: -r
- id: sysv
  doc: use System V sum algorithm, use 512 bytes blocks
  type: boolean
  inputBinding:
    prefix: --sysv
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sum
