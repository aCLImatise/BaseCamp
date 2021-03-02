class: CommandLineTool
id: eagle_convert_input.cwl
inputs:
- id: in_ref
  doc: ''
  type: string?
  inputBinding:
    prefix: --ref
- id: in_var_1
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_eagle
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_convert
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_4
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eagle
- convert
- input
