#!/usr/bin/env cwl-runner

baseCommand:
- NGSDImportORPHA
class: CommandLineTool
cwlVersion: v1.0
id: ngsdimportorpha
inputs:
- doc: Terms XML file from 'https://github.com/Orphanet/Orphadata.org/tree/master/Disorders%20cross%20referenced%20with%20other%20nomenclatures'.
  id: terms
  inputBinding:
    prefix: -terms
  type: File
- doc: Terms<>genes XML file from 'https://github.com/Orphanet/Orphadata.org/tree/master/Disorders%20with%20their%20associated%20genes'.
  id: genes
  inputBinding:
    prefix: -genes
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
