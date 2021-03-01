class: CommandLineTool
id: mixreads.cwl
inputs:
- id: in_root_name_fast_q_file_a
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mixreads
