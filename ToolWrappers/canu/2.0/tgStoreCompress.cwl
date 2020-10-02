class: CommandLineTool
id: tgStoreCompress.cwl
inputs:
- id: in_path_sequence_store
  doc: Path to a sequence store
  type: File
  inputBinding:
    prefix: -S
- id: in_path_add_tigs
  doc: <v>     Path to a tigStore and version to add tigs to
  type: File
  inputBinding:
    prefix: -T
- id: in_v
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tgStoreCompress
