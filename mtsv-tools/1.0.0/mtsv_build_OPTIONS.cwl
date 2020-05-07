class: CommandLineTool
id: mtsv_build_OPTIONS.cwl
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
- OPTIONS
