class: CommandLineTool
id: planemo_share_test.cwl
inputs:
- id: in_file_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- share_test
