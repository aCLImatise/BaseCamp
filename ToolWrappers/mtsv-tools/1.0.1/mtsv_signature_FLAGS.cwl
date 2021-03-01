class: CommandLineTool
id: mtsv_signature_FLAGS.cwl
inputs:
- id: in_lca
  doc: ''
  type: string?
  inputBinding:
    prefix: --lca
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    prefix: --input
- id: in_index
  doc: ''
  type: string?
  inputBinding:
    prefix: --index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mtsv-signature
- FLAGS
