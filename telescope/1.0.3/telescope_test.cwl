class: CommandLineTool
id: ../../../telescope_test.cwl
inputs:
- id: in_telescope
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- telescope
- test
