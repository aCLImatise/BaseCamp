#!/usr/bin/env cwl-runner

baseCommand:
- NGSDAnnotateCNV
class: CommandLineTool
cwlVersion: v1.0
id: ngsdannotatecnv
inputs:
- doc: TSV file containing CNV.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: TSV output file.
  id: out
  inputBinding:
    prefix: -out
  type: File
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
