class: CommandLineTool
id: pslSomeRecords_pslIn_listFile.cwl
inputs:
- id: psl_out
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pslSomeRecords
- pslIn
- listFile
