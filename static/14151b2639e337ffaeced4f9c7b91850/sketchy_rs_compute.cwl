class: CommandLineTool
id: sketchy_rs_compute.cwl
inputs:
- id: in_progress
  doc: progress switch > 0
  type: long?
  inputBinding:
    prefix: --progress
- id: in_ranks
  doc: max ranks per read
  type: long?
  inputBinding:
    prefix: --ranks
- id: in_sketch
  doc: reference sketch
  type: File?
  inputBinding:
    prefix: --sketch
- id: in_threads
  doc: max threads for mash
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sketchy_rs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy-rs
- compute
