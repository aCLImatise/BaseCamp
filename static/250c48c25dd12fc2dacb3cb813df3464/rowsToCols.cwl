class: CommandLineTool
id: rowsToCols.cwl
inputs:
- id: in_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_col
  doc: to have various numbers of columns.
  type: string
  inputBinding:
    prefix: -varCol
- id: fields
  doc: separated by tab
  type: string
  inputBinding:
    prefix: '- fields'
- id: fields
  doc: separated by given character
  type: string
  inputBinding:
    prefix: '- fields'
- id: fields
  doc: of fixed width with space padding
  type: string
  inputBinding:
    prefix: '- fields'
- id: offsets
  doc: ',Y,Z - fields are of fixed width at given offsets'
  type: string
  inputBinding:
    prefix: -offsets
outputs: []
cwlVersion: v1.1
baseCommand:
- rowsToCols
