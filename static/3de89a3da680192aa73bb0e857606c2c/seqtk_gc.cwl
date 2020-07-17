class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqtk_gc.cwl
inputs:
- id: identify_highat_regions
  doc: identify high-AT regions
  type: boolean
  inputBinding:
    prefix: -w
- id: min_gc_fraction
  doc: min GC fraction (or AT fraction for -w) [0.60]
  type: double
  inputBinding:
    prefix: -f
- id: min_region_length
  doc: min region length to output [0]
  type: long
  inputBinding:
    prefix: -l
- id: xdropoff
  doc: X-dropoff [10.0]
  type: double
  inputBinding:
    prefix: -x
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- gc
