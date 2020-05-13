class: CommandLineTool
id: imagespread_msp_list.cwl
inputs:
- id: seq_name_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msp_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: number_of_output_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- imagespread
- msp_list
