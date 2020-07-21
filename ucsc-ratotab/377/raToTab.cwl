class: CommandLineTool
id: ../../../raToTab.cwl
inputs:
- id: cols
  doc: ",b,c - List columns in order to output in table Only these columns will be\
    \ output.  If you Don't give this option, all columns are output in alphabetical\
    \ order"
  type: string
  inputBinding:
    prefix: -cols
- id: head
  doc: '- Put column names in header'
  type: boolean
  inputBinding:
    prefix: -head
- id: in_do_tra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- raToTab
