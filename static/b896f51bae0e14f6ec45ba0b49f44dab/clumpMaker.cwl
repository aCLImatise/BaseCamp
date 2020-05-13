class: CommandLineTool
id: clumpMaker.cwl
inputs:
- id: s
  doc: assume the input is already sorted by the query IID, position. this will also
    make the output sorted by queryIID, queryPosition
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- clumpMaker
