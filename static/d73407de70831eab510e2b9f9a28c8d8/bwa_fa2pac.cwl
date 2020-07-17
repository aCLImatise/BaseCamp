class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bwa_fa2pac.cwl
inputs:
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_dot_fast_a
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
- bwa
- fa2pac
