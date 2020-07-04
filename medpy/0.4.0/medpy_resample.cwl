class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_resample.py_spacing.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
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
- id: me_dpy_resample_do_tpy
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
- id: spacing
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_resample.py
- spacing
