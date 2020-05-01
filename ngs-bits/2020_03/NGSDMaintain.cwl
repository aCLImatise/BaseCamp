#!/usr/bin/env cwl-runner

baseCommand:
- NGSDMaintain
class: CommandLineTool
cwlVersion: v1.0
id: ngsdmaintain
inputs:
- doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Correct found errors/inconstistencies. Default value: 'false'"
  id: fix
  inputBinding:
    prefix: -fix
  type: boolean
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
