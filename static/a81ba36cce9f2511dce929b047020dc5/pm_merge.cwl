class: CommandLineTool
id: pm_merge.cwl
inputs:
- id: find
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: expression
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: whole_name
  doc: '[bcwkMG] -true -type [bcdpflsD] -uid N'
  type: string
  inputBinding:
    prefix: -wholename
- id: x_type
  doc: '[bcdpfls]      -context CONTEXT'
  type: string
  inputBinding:
    prefix: -xtype
- id: exec
  doc: ; -exec COMMAND {} + -ok COMMAND ;
  type: string
  inputBinding:
    prefix: -exec
- id: exec_dir
  doc: ; -execdir COMMAND {} + -okdir COMMAND ;
  type: string
  inputBinding:
    prefix: -execdir
- id: whole_name
  doc: '[bcwkMG] -true -type [bcdpflsD] -uid N'
  type: string
  inputBinding:
    prefix: -wholename
- id: x_type
  doc: '[bcdpfls]      -context CONTEXT'
  type: string
  inputBinding:
    prefix: -xtype
- id: exec
  doc: ; -exec COMMAND {} + -ok COMMAND ;
  type: string
  inputBinding:
    prefix: -exec
- id: exec_dir
  doc: ; -execdir COMMAND {} + -okdir COMMAND ;
  type: string
  inputBinding:
    prefix: -execdir
outputs: []
cwlVersion: v1.1
baseCommand:
- pm-merge
