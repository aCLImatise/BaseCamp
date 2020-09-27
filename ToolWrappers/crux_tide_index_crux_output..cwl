class: CommandLineTool
id: crux_tide_index_crux_output..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tide_index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_protein_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- tide-index
- crux-output.
