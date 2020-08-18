class: CommandLineTool
id: ../../../mafToAxt.cwl
inputs:
- id: strip_db
  doc: '- Strip names from start to first period.'
  type: boolean
  inputBinding:
    prefix: -stripDb
- id: in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: qname
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
- mafToAxt
