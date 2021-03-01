class: CommandLineTool
id: seqtk_gc.cwl
inputs:
- id: in_identify_highat_regions
  doc: identify high-AT regions
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_min_gc_fraction
  doc: min GC fraction (or AT fraction for -w) [0.60]
  type: double?
  inputBinding:
    prefix: -f
- id: in_min_region_length
  doc: min region length to output [0]
  type: long?
  inputBinding:
    prefix: -l
- id: in_xdropoff
  doc: X-dropoff [10.0]
  type: double?
  inputBinding:
    prefix: -x
- id: in_in_dot_fa
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
- seqtk
- gc
