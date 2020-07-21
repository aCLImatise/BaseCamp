class: CommandLineTool
id: ../../../KmerStreamJoin.cwl
inputs:
- id: verbose
  doc: Print output at the end
  type: boolean
  inputBinding:
    prefix: --verbose
- id: o
  doc: ''
  type: string[]
  inputBinding:
    prefix: -o
- id: merged_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- KmerStreamJoin
