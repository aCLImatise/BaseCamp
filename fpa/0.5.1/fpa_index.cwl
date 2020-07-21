class: CommandLineTool
id: ../../../fpa_index.cwl
inputs:
- id: filename
  doc: Write index of mapping passing filter in path passed as parameter
  type: File
  inputBinding:
    prefix: --filename
- id: type
  doc: "Type of index, only reference read when it's query, target or both of them\
    \ [default: both]  [possible values: query, target, both]"
  type: string
  inputBinding:
    prefix: --type
outputs: []
cwlVersion: v1.1
baseCommand:
- fpa
- index
