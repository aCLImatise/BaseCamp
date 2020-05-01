#!/usr/bin/env cwl-runner

baseCommand:
- pm-merge
class: CommandLineTool
cwlVersion: v1.0
id: pm-merge
inputs:
- doc: ''
  id: find
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: path
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: expression
  inputBinding:
    position: 2
  type: string
- doc: '[bcwkMG] -true -type [bcdpflsD] -uid N'
  id: whole_name
  inputBinding:
    prefix: -wholename
  type: string
- doc: '[bcdpfls]      -context CONTEXT'
  id: x_type
  inputBinding:
    prefix: -xtype
  type: string
- doc: ; -exec COMMAND {} + -ok COMMAND ;
  id: exec
  inputBinding:
    prefix: -exec
  type: string
- doc: ; -execdir COMMAND {} + -okdir COMMAND ;
  id: exec_dir
  inputBinding:
    prefix: -execdir
  type: string
- doc: '[bcwkMG] -true -type [bcdpflsD] -uid N'
  id: whole_name
  inputBinding:
    prefix: -wholename
  type: string
- doc: '[bcdpfls]      -context CONTEXT'
  id: x_type
  inputBinding:
    prefix: -xtype
  type: string
- doc: ; -exec COMMAND {} + -ok COMMAND ;
  id: exec
  inputBinding:
    prefix: -exec
  type: string
- doc: ; -execdir COMMAND {} + -okdir COMMAND ;
  id: exec_dir
  inputBinding:
    prefix: -execdir
  type: string
