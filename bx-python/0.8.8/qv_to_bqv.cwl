class: CommandLineTool
id: qv_to_bqv.py.cwl
inputs:
- id: qual_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qv_to_bqv.py
