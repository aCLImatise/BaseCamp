class: CommandLineTool
id: class_run.py.cwl
inputs:
- id: in_clean
  doc: ''
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_quick
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_utility
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_rewrite
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_wrapper
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_class_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- class_run.py
