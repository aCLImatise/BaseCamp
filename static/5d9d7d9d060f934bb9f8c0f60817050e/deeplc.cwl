class: CommandLineTool
id: deeplc.cwl
inputs:
- id: in_file_cal
  doc: ''
  type: File
  inputBinding:
    prefix: --file_cal
- id: in_file_pred
  doc: ''
  type: File
  inputBinding:
    prefix: --file_pred
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deeplc
