class: CommandLineTool
id: SnpSift_intIdx.cwl
inputs:
- id: in_if
  doc: ': Input offset. Default 0 (i.e. zero-based coordinates).'
  type: long?
  inputBinding:
    prefix: -if
- id: in_genomic_intervals_command
  doc: ': Genomic intervals in command line.'
  type: boolean?
  inputBinding:
    prefix: -i
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
- id: in_int_id_x
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
hints: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- intIdx
