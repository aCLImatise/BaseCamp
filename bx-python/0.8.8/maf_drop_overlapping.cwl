class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/maf_drop_overlapping.py.cwl
inputs:
- id: interval
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: files_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_drop_overlapping.py
