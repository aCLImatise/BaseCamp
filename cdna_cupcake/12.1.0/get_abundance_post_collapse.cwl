class: CommandLineTool
id: ../../../get_abundance_post_collapse.py.cwl
inputs:
- id: get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: abundance_slash_read
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: stat
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: after
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: running
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: collapse
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: script_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: works
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: iso_seq_one
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs: []
cwlVersion: v1.1
baseCommand:
- get_abundance_post_collapse.py
