class: CommandLineTool
id: dust.cwl
inputs:
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_cut_off
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dust
