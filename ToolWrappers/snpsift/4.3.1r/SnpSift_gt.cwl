class: CommandLineTool
id: SnpSift_gt.cwl
inputs:
- id: in_uncompress_restore_fields
  doc: ': Uncompress (restore genotype fields).'
  type: boolean?
  inputBinding:
    prefix: -u
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
- id: in_gt
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
- gt
