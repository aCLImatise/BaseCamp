class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pm_invert.cwl
inputs:
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
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -H
- id: l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -L
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -P
- id: o_level
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Olevel
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -D
- id: find
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: expression
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pm-invert
