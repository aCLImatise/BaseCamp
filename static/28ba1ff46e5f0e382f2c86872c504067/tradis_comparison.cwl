class: CommandLineTool
id: tradis_comparison.R.cwl
inputs:
- id: cut_off
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: controls
  doc: ''
  type: string
  inputBinding:
    prefix: --controls
- id: conditions
  doc: ''
  type: string
  inputBinding:
    prefix: --conditions
outputs: []
cwlVersion: v1.1
baseCommand:
- tradis_comparison.R
