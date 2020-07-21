class: CommandLineTool
id: ../../../medpy_stack_sub_volumes.py_images.cwl
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
- id: z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: me_dpy_stack_sub_volumes_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_stack_sub_volumes.py
- images
