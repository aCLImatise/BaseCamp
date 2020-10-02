class: CommandLineTool
id: alleyoop_rates_bam.cwl
inputs:
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_mq
  doc: ''
  type: string
  inputBinding:
    prefix: -mq
- id: in_r
  doc: ''
  type: File
  inputBinding:
    prefix: -r
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_alley_oop
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rates
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- alleyoop
- rates
- bam
