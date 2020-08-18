class: CommandLineTool
id: ../../../nice.cwl
inputs:
- id: adjustment
  doc: add integer N to the niceness (default 10)
  type: string
  inputBinding:
    prefix: --adjustment
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nice
