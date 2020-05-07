class: CommandLineTool
id: convertToEBD.py_outputFile_outputFile_outputFile.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- convertToEBD.py
- outputFile
- outputFile
- outputFile
