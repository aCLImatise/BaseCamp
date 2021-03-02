class: CommandLineTool
id: convertToEBD.py_outputFile.cwl
inputs:
- id: in_convert_to_ebd_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convertToEBD.py
- outputFile
