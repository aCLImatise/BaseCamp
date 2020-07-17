class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/NanoComp.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
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
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- NanoComp
