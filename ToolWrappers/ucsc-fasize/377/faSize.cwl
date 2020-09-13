class: CommandLineTool
id: ../../../faSize.cwl
inputs:
- id: in_detailed
  doc: "outputs name and size of each record\nhas the side effect of printing nothing\
    \ else"
  type: boolean
  inputBinding:
    prefix: -detailed
- id: in_tab
  doc: output statistics in a tab separated format
  type: boolean
  inputBinding:
    prefix: -tab
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- faSize
