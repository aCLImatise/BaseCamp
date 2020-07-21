class: CommandLineTool
id: ../../../class_run.py.cwl
inputs:
- id: clean
  doc: ''
  type: boolean
  inputBinding:
    prefix: --clean
- id: quick
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: utility
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: rewrite
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: wrapper
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: class_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- class_run.py
