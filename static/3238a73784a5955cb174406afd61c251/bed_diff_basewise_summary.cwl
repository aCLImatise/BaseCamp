class: CommandLineTool
id: bed_diff_basewise_summary.py_bed_file_2.cwl
inputs:
- id: bed_file_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_file_2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bed_diff_basewise_summary.py
- bed_file_2
