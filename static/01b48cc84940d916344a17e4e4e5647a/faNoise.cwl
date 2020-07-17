class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/faNoise.cwl
inputs:
- id: upper
  doc: '- output in upper case'
  type: boolean
  inputBinding:
    prefix: -upper
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
outputs: []
cwlVersion: v1.1
baseCommand:
- faNoise
