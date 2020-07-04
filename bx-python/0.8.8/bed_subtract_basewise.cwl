class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bed_subtract_basewise.py.cwl
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
- bed_subtract_basewise.py
