class: CommandLineTool
id: SnpSift_tstv.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ts_tv
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file_1vcf
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- tstv
