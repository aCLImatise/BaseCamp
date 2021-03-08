class: CommandLineTool
id: bed_intersect.py.cwl
inputs:
- id: in_min_cols
  doc: Require this much overlap (default 1bp)
  type: long?
  inputBinding:
    prefix: --mincols
- id: in_upstream_pad
  doc: upstream interval padding (default 0bp)
  type: long?
  inputBinding:
    prefix: --upstream_pad
- id: in_downstream_pad
  doc: downstream interval padding (default 0bp)
  type: long?
  inputBinding:
    prefix: --downstream_pad
- id: in_reverse
  doc: Print regions that DO NOT overlap
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_booleans
  doc: Just print '1' if interval overlaps or '0' otherwise
  type: boolean?
  inputBinding:
    prefix: --booleans
- id: in_bed_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_bed_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- bed_intersect.py
