class: CommandLineTool
id: oligoscreen_list file.cwl
inputs:
- id: report_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- oligoscreen
- list file
