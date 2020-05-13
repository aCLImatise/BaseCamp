class: CommandLineTool
id: eledef.cwl
inputs:
- id: ele_def
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: msp_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: method
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: cut_off
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- eledef
