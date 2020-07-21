class: CommandLineTool
id: ../../../summarizePolishes.cwl
inputs:
- id: excel
  doc: ''
  type: boolean
  inputBinding:
    prefix: -excel
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- summarizePolishes
