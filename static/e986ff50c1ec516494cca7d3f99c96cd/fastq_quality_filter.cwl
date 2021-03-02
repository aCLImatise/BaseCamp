class: CommandLineTool
id: fastq_quality_filter.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_z
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_q
  doc: ''
  type: string?
  inputBinding:
    prefix: -q
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq_quality_filter
