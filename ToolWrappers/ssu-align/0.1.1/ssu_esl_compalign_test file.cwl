class: CommandLineTool
id: ssu_esl_compalign_test file.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_ssu_esl_comp_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_trusted_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_test_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-compalign
- test file
