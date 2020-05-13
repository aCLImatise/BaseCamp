class: CommandLineTool
id: SnpSift_intersect.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_1bed
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: file_n_bed
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: min_overlap
  doc: ': Minimum number of bases that two intervals have to overlap. Default : 0'
  type: string
  inputBinding:
    prefix: -minOverlap
- id: cluster
  doc: ": An interval has to intersect at least 'num' intervals (from other files)\
    \ to be considered. Default: 0"
  type: string
  inputBinding:
    prefix: -cluster
- id: intersect
  doc: ': Report the intersection of all intervals. Default: false'
  type: boolean
  inputBinding:
    prefix: -intersect
- id: union
  doc: ': Report the union of all intervals. Default: true'
  type: boolean
  inputBinding:
    prefix: -union
- id: not
  doc: ': Only report if it does NOT intersect with any interval in this file (i.e.
    filter out if intersects)'
  type: File
  inputBinding:
    prefix: -not
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- intersect
