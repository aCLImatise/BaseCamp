class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/analyse.py.cwl
inputs:
- id: a_type
  doc: get all features of type TYPE
  type: string
  inputBinding:
    prefix: --atype
- id: f_type
  doc: get all features except features of type TYPE
  type: string
  inputBinding:
    prefix: --ftype
- id: a_name
  doc: get all features with name NAME
  type: string
  inputBinding:
    prefix: --aname
- id: fname
  doc: get all features except features with name NAME
  type: string
  inputBinding:
    prefix: --fname
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- analyse.py
