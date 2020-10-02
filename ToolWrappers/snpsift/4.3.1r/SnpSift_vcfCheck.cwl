class: CommandLineTool
id: SnpSift_vcfCheck.cwl
inputs:
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
- id: in_vcf_check
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_one_dot_vcf
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_file_ndot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- vcfCheck
