class: CommandLineTool
id: OligoWalk_report file.cwl
inputs:
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: report_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- OligoWalk
- report file
