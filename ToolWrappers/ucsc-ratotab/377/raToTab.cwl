class: CommandLineTool
id: raToTab.cwl
inputs:
- id: in_cols
  doc: ",b,c - List columns in order to output in table\nOnly these columns will be\
    \ output.  If you\nDon't give this option, all columns are output\nin alphabetical\
    \ order"
  type: string?
  inputBinding:
    prefix: -cols
- id: in_head
  doc: '- Put column names in header'
  type: boolean?
  inputBinding:
    prefix: -head
- id: in_in_do_tra
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- raToTab
