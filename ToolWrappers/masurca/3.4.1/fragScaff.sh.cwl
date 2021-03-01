class: CommandLineTool
id: fragScaff.sh.cwl
inputs:
- id: in_b
  doc: ''
  type: File?
  inputBinding:
    prefix: -b
- id: in_c
  doc: ''
  type: long?
  inputBinding:
    prefix: -c
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_t
  doc: ''
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fragScaff.sh
