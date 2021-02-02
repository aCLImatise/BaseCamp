class: CommandLineTool
id: alleyoop_utrrates.cwl
inputs:
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
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
- id: in_bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- alleyoop
- utrrates
