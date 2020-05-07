class: CommandLineTool
id: SnpSift_intervals.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: intervals
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: file_1bed
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: file_n_bed
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: i
  doc: ':     VCF file. Default STDIN'
  type: File
  inputBinding:
    prefix: -i
- id: x
  doc: ':     Exclude VCF entries in intervals'
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- intervals
