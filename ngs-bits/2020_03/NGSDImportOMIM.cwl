#!/usr/bin/env cwl-runner

baseCommand:
- NGSDImportOMIM
class: CommandLineTool
cwlVersion: v1.0
id: ngsdimportomim
inputs:
- doc: OMIM 'mim2gene.txt' file from 'http://omim.org/downloads/'.
  id: gene
  inputBinding:
    prefix: -gene
  type: File
- doc: OMIM 'morbidmap.txt' file from 'http://omim.org/downloads/'.
  id: morbid
  inputBinding:
    prefix: -morbid
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
