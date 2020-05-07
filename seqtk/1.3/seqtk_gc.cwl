class: CommandLineTool
id: seqtk_gc.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: w
  doc: identify high-AT regions
  type: boolean
  inputBinding:
    prefix: -w
- id: f
  doc: min GC fraction (or AT fraction for -w) [0.60]
  type: double
  inputBinding:
    prefix: -f
- id: l
  doc: min region length to output [20]
  type: long
  inputBinding:
    prefix: -l
- id: x
  doc: X-dropoff [10.0]
  type: double
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- gc
