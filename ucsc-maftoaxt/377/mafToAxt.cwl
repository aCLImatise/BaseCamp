class: CommandLineTool
id: mafToAxt.cwl
inputs:
- id: in_maf
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
- id: strip_db
  doc: from start to first period.
  type: string
  inputBinding:
    prefix: -stripDb
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToAxt
