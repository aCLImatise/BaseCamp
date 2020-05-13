class: CommandLineTool
id: txt2mzml_fileIn.cwl
inputs:
- id: file_out
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- txt2mzml
- fileIn
