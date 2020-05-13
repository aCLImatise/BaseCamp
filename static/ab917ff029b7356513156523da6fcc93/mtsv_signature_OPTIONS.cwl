class: CommandLineTool
id: mtsv_signature_OPTIONS.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: index
  doc: ''
  type: string
  inputBinding:
    prefix: --index
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: lca
  doc: ''
  type: string
  inputBinding:
    prefix: --lca
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-signature
- OPTIONS
