class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sentieon_bwa_fa2pac.cwl
inputs:
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fa_two_pac
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- fa2pac
