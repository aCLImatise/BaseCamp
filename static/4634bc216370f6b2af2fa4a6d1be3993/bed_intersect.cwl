class: CommandLineTool
id: bed_intersect.py.cwl
inputs:
- id: bed_file_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_file_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: min_cols
  doc: Require this much overlap (default 1bp)
  type: long
  inputBinding:
    prefix: --mincols
- id: upstream_pad
  doc: upstream interval padding (default 0bp)
  type: string
  inputBinding:
    prefix: --upstream_pad
- id: downstream_pad
  doc: downstream interval padding (default 0bp)
  type: string
  inputBinding:
    prefix: --downstream_pad
- id: reverse
  doc: Print regions that DO NOT overlap
  type: boolean
  inputBinding:
    prefix: --reverse
- id: booleans
  doc: Just print '1' if interval overlaps or '0' otherwise
  type: boolean
  inputBinding:
    prefix: --booleans
outputs: []
cwlVersion: v1.1
baseCommand:
- bed_intersect.py
