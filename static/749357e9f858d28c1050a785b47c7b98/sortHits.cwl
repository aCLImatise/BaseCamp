class: CommandLineTool
id: sortHits.cwl
inputs:
- id: in_t
  doc: ''
  type: File?
  inputBinding:
    prefix: -t
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_hit_file_two
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sortHits
