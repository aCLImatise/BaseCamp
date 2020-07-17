class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mummer.cwl
inputs:
- id: reference_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mummer
