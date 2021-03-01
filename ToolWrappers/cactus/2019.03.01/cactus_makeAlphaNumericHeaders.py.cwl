class: CommandLineTool
id: cactus_makeAlphaNumericHeaders.py.cwl
inputs:
- id: in_fast_a_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_fast_a_output_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_a_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_fast_a_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- cactus_makeAlphaNumericHeaders.py
