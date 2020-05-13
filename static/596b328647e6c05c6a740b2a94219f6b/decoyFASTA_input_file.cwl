class: CommandLineTool
id: decoyFASTA_input_file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filter_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- decoyFASTA
- input_file
