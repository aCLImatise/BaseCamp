class: CommandLineTool
id: prodigal_them..cwl
inputs:
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_d
  doc: ''
  type: File
  inputBinding:
    prefix: -d
- id: in_c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: in_a
  doc: ''
  type: File
  inputBinding:
    prefix: -a
- id: in_prodigal
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prodigal
- them.
