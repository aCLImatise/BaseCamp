class: CommandLineTool
id: sam_to_collapsed_gff.py.cwl
inputs:
- id: convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: collapsed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: gff
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: format
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: sam_filename
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- sam_to_collapsed_gff.py
