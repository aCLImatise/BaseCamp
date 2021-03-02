class: CommandLineTool
id: teloclip_extract_samfile.cwl
inputs:
- id: in_prefix
  doc: ''
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_ref_idx
  doc: ''
  type: string?
  inputBinding:
    prefix: --refIdx
- id: in_telo_clip_extract
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
- teloclip-extract
- samfile
