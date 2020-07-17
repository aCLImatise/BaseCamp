class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convertToEBD.py_outputFile.cwl
inputs:
- id: convert_to_ebd_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- convertToEBD.py
- outputFile
