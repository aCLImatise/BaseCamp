class: CommandLineTool
id: imagespread_seq_name_list.cwl
inputs:
- id: msp_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: number_of_output_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- imagespread
- seq_name_list
