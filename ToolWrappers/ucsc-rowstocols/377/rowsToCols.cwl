class: CommandLineTool
id: rowsToCols.cwl
inputs:
- id: in_var_col
  doc: '- rows may to have various numbers of columns.'
  type: boolean
  inputBinding:
    prefix: -varCol
- id: in_tab
  doc: '- fields are separated by tab'
  type: boolean
  inputBinding:
    prefix: -tab
- id: in_fs
  doc: '- fields are separated by given character'
  type: string
  inputBinding:
    prefix: -fs
- id: in_fixed
  doc: '- fields are of fixed width with space padding'
  type: boolean
  inputBinding:
    prefix: -fixed
- id: in_offsets
  doc: ',Y,Z - fields are of fixed width at given offsets'
  type: string
  inputBinding:
    prefix: -offsets
- id: in_in_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rowsToCols
