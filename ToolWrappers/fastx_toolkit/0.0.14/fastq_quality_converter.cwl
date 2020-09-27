class: CommandLineTool
id: fastq_quality_converter.cwl
inputs:
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq_quality_converter
