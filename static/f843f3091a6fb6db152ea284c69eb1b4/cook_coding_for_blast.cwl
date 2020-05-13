class: CommandLineTool
id: cook_coding_for_blast.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cook_coding_for_blastp_y
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- cook_coding_for_blast.py
