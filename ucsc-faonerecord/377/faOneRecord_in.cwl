class: CommandLineTool
id: faOneRecord_in.fa.cwl
inputs:
- id: record_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- faOneRecord
- in.fa
