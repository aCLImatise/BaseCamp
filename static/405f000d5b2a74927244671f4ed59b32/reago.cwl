class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/reago.py.cwl
inputs:
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: filename_dot_fast_a
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- reago.py
