class: CommandLineTool
id: SnpSift_hwe.cwl
inputs:
- id: in__be_quite
  doc: ': Be quite'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in__be_verbose
  doc: ': Be verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_h_we
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_dot_vcf
  doc: ''
  type: File?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- hwe
