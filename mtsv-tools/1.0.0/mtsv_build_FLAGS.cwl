class: CommandLineTool
id: mtsv_build_FLAGS.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
- id: index
  doc: ''
  type: string
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-build
- FLAGS
