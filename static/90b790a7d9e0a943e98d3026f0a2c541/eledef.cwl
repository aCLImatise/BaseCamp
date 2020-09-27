class: CommandLineTool
id: eledef.cwl
inputs:
- id: in_ele_def
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_msp_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_method
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_cut_off
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- eledef
