class: CommandLineTool
id: novolrpolish_Novocraft.cwl
inputs:
- id: in_colheader_select_columns
  doc: ',COL2=HEADER     Select columns for display'
  type: long?
  inputBinding:
    prefix: -o
- id: in_ps
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
- novolrpolish
- Novocraft
