class: CommandLineTool
id: ../../../bioconvert_init.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string
  inputBinding:
    prefix: --input-extension
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_outputextension__outputextension
  doc: -o OUTPUT_EXTENSION, --output-extension OUTPUT_EXTENSION
  type: string
  inputBinding:
    position: 0
- id: in_output_extension
  doc: '----'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioconvert_init
