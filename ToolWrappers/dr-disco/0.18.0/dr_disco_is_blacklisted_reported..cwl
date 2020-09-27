class: CommandLineTool
id: dr_disco_is_blacklisted_reported..cwl
inputs:
- id: in_dr_disco
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_is_blacklisted
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pos_one
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_pos_two
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dr-disco
- is-blacklisted
- reported.
