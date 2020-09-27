class: CommandLineTool
id: teloclip_samfile.cwl
inputs:
- id: in_max_break
  doc: ''
  type: long
  inputBinding:
    prefix: --maxBreak
- id: in_min_clip
  doc: ''
  type: long
  inputBinding:
    prefix: --minClip
- id: in_ref_idx
  doc: ''
  type: string
  inputBinding:
    prefix: --refIdx
- id: in_telo_clip
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
- teloclip
- samfile
