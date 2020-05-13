class: CommandLineTool
id: rebaler_reads.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- rebaler
- reads
