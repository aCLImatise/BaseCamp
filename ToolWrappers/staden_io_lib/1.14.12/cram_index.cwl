class: CommandLineTool
id: cram_index.cwl
inputs:
- id: in_filename_dot_cram
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_filename_dot_cram_dot_cra_i
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cram_index
