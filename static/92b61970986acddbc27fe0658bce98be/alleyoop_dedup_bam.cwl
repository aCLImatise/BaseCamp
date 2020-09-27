class: CommandLineTool
id: alleyoop_dedup_bam.cwl
inputs:
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_tc
  doc: ''
  type: string
  inputBinding:
    prefix: -tc
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
- id: in_ded_up
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
- dedup
- bam
