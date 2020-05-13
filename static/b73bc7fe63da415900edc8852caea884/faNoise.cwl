class: CommandLineTool
id: faNoise.cwl
inputs:
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: transition_ppt
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: transversion_ppt
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: insert_ppt
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: delete_ppt
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: chimera_ppt
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: output
  doc: upper case
  type: string
  inputBinding:
    prefix: '- output'
outputs: []
cwlVersion: v1.1
baseCommand:
- faNoise
