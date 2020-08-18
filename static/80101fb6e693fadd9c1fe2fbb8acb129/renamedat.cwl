class: CommandLineTool
id: ../../../renamedat.pl.cwl
inputs:
- id: basename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: not
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: found
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- renamedat.pl
