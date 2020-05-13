class: CommandLineTool
id: oligoscreen_report file.cwl
inputs:
- id: list_file
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
- oligoscreen
- report file
