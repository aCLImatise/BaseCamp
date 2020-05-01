#!/usr/bin/env cwl-runner

baseCommand:
- NGSDImportHGNC
class: CommandLineTool
cwlVersion: v1.0
id: ngsdimporthgnc
inputs:
- doc: HGNC flat file (download and unzip ftp://ftp.ebi.ac.uk/pub/databases/genenames/hgnc_complete_set.txt.gz)
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: "If set, overwrites old data. Default value: 'false'"
  id: force
  inputBinding:
    prefix: -force
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
