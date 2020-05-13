class: CommandLineTool
id: bed_intersect_basewise.py_bed_file_2.cwl
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
- bed_intersect_basewise.py
- bed_file_2
