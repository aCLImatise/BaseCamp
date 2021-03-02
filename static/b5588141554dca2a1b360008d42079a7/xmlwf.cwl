class: CommandLineTool
id: xmlwf.cwl
inputs:
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_x
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_w
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_n
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xmlwf
