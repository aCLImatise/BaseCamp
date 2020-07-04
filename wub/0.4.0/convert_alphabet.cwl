class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convert_alphabet.py_output_fastx.cwl
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
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -R
- id: convert_alphabet_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_alphabet.py
- output_fastx
