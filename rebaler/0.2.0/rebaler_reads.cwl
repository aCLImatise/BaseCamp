class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rebaler_reads.cwl
inputs:
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: random
  doc: ''
  type: boolean
  inputBinding:
    prefix: --random
- id: re_baler
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rebaler
- reads
