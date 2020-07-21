class: CommandLineTool
id: ../../../rowsToCols.cwl
inputs:
- id: var_col
  doc: '- rows may to have various numbers of columns.'
  type: boolean
  inputBinding:
    prefix: -varCol
- id: tab
  doc: '- fields are separated by tab'
  type: boolean
  inputBinding:
    prefix: -tab
- id: fs
  doc: '- fields are separated by given character'
  type: string
  inputBinding:
    prefix: -fs
- id: fixed
  doc: '- fields are of fixed width with space padding'
  type: boolean
  inputBinding:
    prefix: -fixed
- id: offsets
  doc: ',Y,Z - fields are of fixed width at given offsets'
  type: string
  inputBinding:
    prefix: -offsets
- id: in_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rowsToCols
