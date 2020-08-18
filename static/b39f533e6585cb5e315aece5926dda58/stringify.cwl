class: CommandLineTool
id: ../../../stringify.cwl
inputs:
- id: var
  doc: '- create a variable with the specified name containing the string.'
  type: string
  inputBinding:
    prefix: -var
- id: static
  doc: '- create the variable but put static in front of it.'
  type: boolean
  inputBinding:
    prefix: -static
- id: array
  doc: '- create an array of strings, one for each line'
  type: boolean
  inputBinding:
    prefix: -array
- id: in_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stringify
