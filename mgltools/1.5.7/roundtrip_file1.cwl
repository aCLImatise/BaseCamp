class: CommandLineTool
id: roundtrip_file1.cwl
inputs:
- id: file_2
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- roundtrip
- file1
