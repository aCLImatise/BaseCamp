class: CommandLineTool
id: faNoise.cwl
inputs:
- id: in_upper
  doc: '- output in upper case'
  type: boolean
  inputBinding:
    prefix: -upper
- id: in_in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_transition_ppt
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_transversion_ppt
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_insert_ppt
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_delete_ppt
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- faNoise
