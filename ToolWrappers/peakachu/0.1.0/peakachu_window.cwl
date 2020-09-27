class: CommandLineTool
id: peakachu_window.cwl
inputs:
- id: in_m
  doc: ''
  type: long
  inputBinding:
    prefix: -M
- id: in_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -P
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_c
  doc: ''
  type: string[]
  inputBinding:
    prefix: -c
- id: in_t
  doc: ''
  type: string[]
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- peakachu
- window
