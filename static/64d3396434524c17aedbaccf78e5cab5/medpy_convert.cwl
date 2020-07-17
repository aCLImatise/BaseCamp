class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_convert.py_output.cwl
inputs:
- id: e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
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
- id: me_dpy_convert_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_convert.py
- output
