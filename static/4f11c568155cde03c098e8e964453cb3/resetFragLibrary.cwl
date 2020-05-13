class: CommandLineTool
id: resetFragLibrary.cwl
inputs:
- id: update_clr_ranges
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: frag_id_newlib_id
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- resetFragLibrary
