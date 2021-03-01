class: CommandLineTool
id: makeIgnoreList.cwl
inputs:
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -m
- id: in_c
  doc: ''
  type: long?
  inputBinding:
    prefix: -c
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints: []
cwlVersion: v1.1
baseCommand:
- makeIgnoreList
