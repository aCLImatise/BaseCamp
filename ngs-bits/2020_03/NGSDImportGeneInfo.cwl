#!/usr/bin/env cwl-runner

baseCommand:
- NGSDImportGeneInfo
class: CommandLineTool
cwlVersion: v1.0
id: ngsdimportgeneinfo
inputs:
- doc: gnomAD gene contraint file (download and unzip https://storage.googleapis.com/gnomad-public/release/2.1.1/constraint/gnomad.v2.1.1.lof_metrics.by_gene.txt.bgz).
  id: constraint
  inputBinding:
    prefix: -constraint
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
