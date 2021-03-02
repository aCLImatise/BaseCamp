class: CommandLineTool
id: gbmunge.cwl
inputs:
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gbmunge
