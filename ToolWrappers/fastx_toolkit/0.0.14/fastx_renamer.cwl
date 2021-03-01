class: CommandLineTool
id: fastx_renamer.cwl
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
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_z
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastx_renamer
