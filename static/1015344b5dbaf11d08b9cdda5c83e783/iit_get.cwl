class: CommandLineTool
id: iit_get.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i_it_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: field
  doc: Show given field part of the annotation
  type: string
  inputBinding:
    prefix: --field
- id: label
  doc: Interpret query or queries as a label, even if it is numeric
  type: boolean
  inputBinding:
    prefix: --label
- id: coords
  doc: Interpret query or queries as coords
  type: boolean
  inputBinding:
    prefix: --coords
- id: an_not_only
  doc: Show annotation lines only (no headers)
  type: boolean
  inputBinding:
    prefix: --annotonly
- id: sort
  doc: Sort results by coordinates
  type: boolean
  inputBinding:
    prefix: --sort
- id: unsigned
  doc: Print all intervals as low..high, even those entered as reverse (high < low)
  type: boolean
  inputBinding:
    prefix: --unsigned
- id: flanking
  doc: Show flanking segments on left and right
  type: long
  inputBinding:
    prefix: --flanking
outputs: []
cwlVersion: v1.1
baseCommand:
- iit_get
