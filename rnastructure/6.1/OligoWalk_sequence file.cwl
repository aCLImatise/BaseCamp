class: CommandLineTool
id: OligoWalk_sequence file.cwl
inputs:
- id: report_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- OligoWalk
- sequence file
