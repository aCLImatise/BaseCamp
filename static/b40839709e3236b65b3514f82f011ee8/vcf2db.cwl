class: CommandLineTool
id: ../../../vcf2db.py.cwl
inputs:
- id: expand
  doc: sample columns to expand into their own tables
  type: string
  inputBinding:
    prefix: --expand
- id: take
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: create
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: var_6
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: gemini
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: compatible
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2db.py
