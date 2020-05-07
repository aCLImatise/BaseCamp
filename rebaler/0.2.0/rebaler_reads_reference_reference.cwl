class: CommandLineTool
id: rebaler_reads_reference_reference.cwl
inputs:
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- reference
- reference
