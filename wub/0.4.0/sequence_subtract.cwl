class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequence_subtract.py_output_fastx.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: sequence_subtract_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence_subtract.py
- output_fastx
