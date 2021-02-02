class: CommandLineTool
id: SnpSift_varType.cwl
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
- id: in_vartype
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_dot_vcf
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- varType
