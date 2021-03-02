class: CommandLineTool
id: mb_adapter_clipper_prime5_adapter.cwl
inputs:
- id: in_min_len
  doc: ''
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_clip_len
  doc: ''
  type: string?
  inputBinding:
    prefix: --clip_len
- id: in_mb_adapter_clipper
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
- mb-adapter-clipper
- prime5_adapter
