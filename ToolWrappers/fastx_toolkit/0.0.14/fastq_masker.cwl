class: CommandLineTool
id: fastq_masker.cwl
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
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
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
- fastq_masker
