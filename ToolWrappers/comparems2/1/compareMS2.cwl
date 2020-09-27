class: CommandLineTool
id: compareMS2.cwl
inputs:
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_two
  doc: ''
  type: File
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: File
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- compareMS2
