class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/faOneRecord.cwl
inputs:
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: record_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faOneRecord
