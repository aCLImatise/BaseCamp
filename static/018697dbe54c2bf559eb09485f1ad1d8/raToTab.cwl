class: CommandLineTool
id: raToTab.cwl
inputs:
- id: inra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cols
  doc: ",b,c - List columns in order to output in table Only these columns will be\
    \ output.  If you Don't give this option, all columns are output in alphabetical\
    \ order"
  type: string
  inputBinding:
    prefix: -cols
- id: head
  doc: names in header
  type: string
  inputBinding:
    prefix: -head
outputs: []
cwlVersion: v1.1
baseCommand:
- raToTab
