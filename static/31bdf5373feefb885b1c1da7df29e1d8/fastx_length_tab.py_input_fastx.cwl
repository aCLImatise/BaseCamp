class: CommandLineTool
id: fastx_length_tab.py_input_fastx.cwl
inputs:
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_output_tsv
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastx_length_tab.py
- input_fastx
