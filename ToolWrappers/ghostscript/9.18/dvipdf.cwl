class: CommandLineTool
id: dvipdf.cwl
inputs:
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_input_dot_dvi
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_dot_pdf
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
- dvipdf
