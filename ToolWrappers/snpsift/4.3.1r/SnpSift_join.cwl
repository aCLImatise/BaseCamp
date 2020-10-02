class: CommandLineTool
id: SnpSift_join.cwl
inputs:
- id: in_if_one
  doc: ': Offset for file1 (e.g. 1 if coordinates are one-based. Default: 1'
  type: long
  inputBinding:
    prefix: -if1
- id: in_if_two
  doc: ': Offset for file2 (e.g. 2 if coordinates are one-based. Default: 1'
  type: long
  inputBinding:
    prefix: -if2
- id: in_cols_one
  doc: ": Column definition for file 1. Format: chrCol,startCol,endCol (e.g. '1,2,3').\
    \ Shortcuts 'bed' or 'vcf' are allowed. Default: 'vcf'"
  type: long
  inputBinding:
    prefix: -cols1
- id: in_cols_two
  doc: ": Column definition for file 2. Format: chrCol,startCol,endCol (e.g. '1,2,3').\
    \ Shortcuts 'bed' or 'vcf' are allowed. Default: 'vcf'"
  type: long
  inputBinding:
    prefix: -cols2
- id: in_all
  doc: ': For each interval, show all intersecting. Default: show only one (largest
    intersection)'
  type: boolean
  inputBinding:
    prefix: -all
- id: in_closest
  doc: ': Show closest intervals in file2 if none intersect. Default: off'
  type: boolean
  inputBinding:
    prefix: -closest
- id: in_empty
  doc: ': Show intervals in file1 even if they do not intersect with any other interval.
    Default: off'
  type: boolean
  inputBinding:
    prefix: -empty
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_join
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_file_two
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- join
