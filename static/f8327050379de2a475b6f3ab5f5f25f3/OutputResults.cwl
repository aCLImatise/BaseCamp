class: CommandLineTool
id: ../../../OutputResults.cwl
inputs:
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: version
  doc: ''
  type: string
  inputBinding:
    prefix: -version
- id: output_text
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: an_k
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- OutputResults
