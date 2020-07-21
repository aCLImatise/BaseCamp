class: CommandLineTool
id: ../../../convertIDs.pl.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: organism
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: id_type
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: header
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: original
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_6
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: all
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- convertIDs.pl
