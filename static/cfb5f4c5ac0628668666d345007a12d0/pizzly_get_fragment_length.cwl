class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pizzly_get_fragment_length.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: get_fragment_length_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: h_five_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cut_off
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- pizzly_get_fragment_length.py
