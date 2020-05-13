class: CommandLineTool
id: sketchy_rs_compute.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: progress
  doc: progress switch > 0
  type: long
  inputBinding:
    prefix: --progress
- id: ranks
  doc: max ranks per read
  type: long
  inputBinding:
    prefix: --ranks
- id: sketch
  doc: reference sketch
  type: File
  inputBinding:
    prefix: --sketch
- id: threads
  doc: max threads for mash
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy-rs
- compute
