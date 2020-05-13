class: CommandLineTool
id: pslSomeRecords_pslIn_pslOut.cwl
inputs:
- id: list_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: psl_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslSomeRecords
- pslIn
- pslOut
