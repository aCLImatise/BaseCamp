class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_label_superimposition.py_output.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: me_dpy_label_superimposition_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: image_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: image_two
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_label_superimposition.py
- output
