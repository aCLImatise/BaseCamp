class: CommandLineTool
id: ../../../bed_diff_basewise_summary.py.cwl
inputs:
- id: bed_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bed_diff_basewise_summary.py
