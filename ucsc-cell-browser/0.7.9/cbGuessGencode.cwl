class: CommandLineTool
id: cbGuessGencode.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: version
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: gene
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: ids
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: first
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: tab_sep
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: field
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 13
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 14
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 15
- id: reports
  doc: ''
  type: string
  inputBinding:
    position: 16
- id: best
  doc: ''
  type: string
  inputBinding:
    position: 17
- id: gen_code
  doc: ''
  type: string
  inputBinding:
    position: 18
- id: version
  doc: ''
  type: string
  inputBinding:
    position: 19
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- cbGuessGencode
