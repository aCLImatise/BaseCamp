class: CommandLineTool
id: txt2mzml_fileOut.cwl
inputs:
- id: file_in
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_out
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- txt2mzml
- fileOut
