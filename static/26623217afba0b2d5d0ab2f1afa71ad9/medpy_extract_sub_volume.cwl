class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_extract_sub_volume.py_volume.cwl
inputs:
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
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
- id: me_dpy_extract_sub_volume_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: image
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: volume
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_extract_sub_volume.py
- volume
