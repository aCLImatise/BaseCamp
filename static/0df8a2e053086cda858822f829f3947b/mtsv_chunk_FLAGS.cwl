class: CommandLineTool
id: mtsv_chunk_FLAGS.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: gb
  doc: ''
  type: long
  inputBinding:
    prefix: --gb
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-chunk
- FLAGS
