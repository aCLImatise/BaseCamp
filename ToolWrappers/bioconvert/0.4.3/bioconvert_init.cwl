class: CommandLineTool
id: bioconvert_init.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_input_extension
  doc: -o OUTPUT_EXTENSION, --output-extension OUTPUT_EXTENSION
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bioconvert_init
