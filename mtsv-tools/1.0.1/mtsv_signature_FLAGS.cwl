class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mtsv_signature_FLAGS.cwl
inputs:
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
- FLAGS
