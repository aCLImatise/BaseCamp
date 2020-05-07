class: CommandLineTool
id: extractContig_bankname_contigiid.cwl
inputs:
- id: new_bank
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extractContig
- bankname
- contigiid
