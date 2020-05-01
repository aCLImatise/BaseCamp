#!/usr/bin/env cwl-runner

baseCommand:
- NGSDInit
class: CommandLineTool
cwlVersion: v1.0
id: ngsdinit
inputs:
- doc: "Additional SQL script to execute after database initialization. Default value:\
    \ ''"
  id: add
  inputBinding:
    prefix: -add
  type: File
- doc: "Database password needed to re-initialize the production database. Default\
    \ value: ''"
  id: force
  inputBinding:
    prefix: -force
  type: string
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
