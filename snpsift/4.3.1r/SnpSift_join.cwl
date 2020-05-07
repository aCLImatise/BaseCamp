class: CommandLineTool
id: SnpSift_join.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: join
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file_1
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: file_2
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: if1
  doc: ': Offset for file1 (e.g. 1 if coordinates are one-based. Default: 1'
  type: string
  inputBinding:
    prefix: -if1
- id: if2
  doc: ': Offset for file2 (e.g. 2 if coordinates are one-based. Default: 1'
  type: string
  inputBinding:
    prefix: -if2
- id: cols1
  doc: ": Column definition for file 1. Format: chrCol,startCol,endCol (e.g. '1,2,3').\
    \ Shortcuts 'bed' or 'vcf' are allowed. Default: 'vcf'"
  type: string
  inputBinding:
    prefix: -cols1
- id: cols2
  doc: ": Column definition for file 2. Format: chrCol,startCol,endCol (e.g. '1,2,3').\
    \ Shortcuts 'bed' or 'vcf' are allowed. Default: 'vcf'"
  type: string
  inputBinding:
    prefix: -cols2
- id: all
  doc: ': For each interval, show all intersecting. Default: show only one (largest
    intersection)'
  type: boolean
  inputBinding:
    prefix: -all
- id: closest
  doc: ': Show closest intervals in file2 if none intersect. Default: off'
  type: boolean
  inputBinding:
    prefix: -closest
- id: empty
  doc: ': Show intervals in file1 even if they do not intersect with any other interval.
    Default: off'
  type: boolean
  inputBinding:
    prefix: -empty
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- join
