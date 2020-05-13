class: CommandLineTool
id: junctools_split.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contains
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: number
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: tools
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: manipulating
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: junction
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 10
- id: split
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- junctools
- split
