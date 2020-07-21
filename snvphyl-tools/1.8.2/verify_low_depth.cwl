class: CommandLineTool
id: ../../../verify_low_depth.pl.cwl
inputs:
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: --max-depth
- id: bam
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bam
- id: num_cpu
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- verify_low_depth.pl
