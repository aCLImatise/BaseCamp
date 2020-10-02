class: CommandLineTool
id: fastq_quality_trimmer.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
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
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq_quality_trimmer
