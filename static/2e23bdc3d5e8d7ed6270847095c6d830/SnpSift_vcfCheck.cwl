class: CommandLineTool
id: SnpSift_vcfCheck.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf_check
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file_1vcf
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: file_nv_cf
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
- vcfCheck
