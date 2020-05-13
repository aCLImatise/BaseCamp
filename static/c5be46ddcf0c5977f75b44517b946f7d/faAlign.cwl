class: CommandLineTool
id: faAlign.cwl
inputs:
- id: target_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_axt
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: use
  doc: scoring scheme
  type: string
  inputBinding:
    prefix: '- use'
outputs: []
cwlVersion: v1.1
baseCommand:
- faAlign
