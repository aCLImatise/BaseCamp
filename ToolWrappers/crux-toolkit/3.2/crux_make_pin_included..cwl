class: CommandLineTool
id: crux_make_pin_included..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_make_pin
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target_input
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- make-pin
- included.
