class: CommandLineTool
id: pslSomeRecords_listFile.cwl
inputs:
- id: psl_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: psl_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pslSomeRecords
- listFile
