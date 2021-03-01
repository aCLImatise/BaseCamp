class: CommandLineTool
id: esl_compalign_trusted file.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_test_file
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
- esl-compalign
- trusted file
