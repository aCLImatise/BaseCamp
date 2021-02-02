class: CommandLineTool
id: mtsv_chunk_FLAGS.cwl
inputs:
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mtsv-chunk
- FLAGS
