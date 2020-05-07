class: CommandLineTool
id: SnpSift_private.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: private
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filet_fam
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: file_vcf
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- private
