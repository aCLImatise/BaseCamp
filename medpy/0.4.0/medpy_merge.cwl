class: CommandLineTool
id: ../../../medpy_merge.py_output.cwl
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
- id: me_dpy_merge_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_two
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
- medpy_merge.py
- output
