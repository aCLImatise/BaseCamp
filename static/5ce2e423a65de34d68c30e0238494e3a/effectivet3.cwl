class: CommandLineTool
id: effectivet3.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- effectivet3
