#!/usr/bin/env cwl-runner

baseCommand:
- NGSDImportEnsembl
class: CommandLineTool
cwlVersion: v1.0
id: ngsdimportensembl
inputs:
- doc: Ensembl transcript file (download and unzip ftp://ftp.ensembl.org/pub/grch37/release-87/gff3/homo_sapiens/Homo_sapiens.GRCh37.87.chr.gff3.gz).
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "If set, all transcripts are imported (the default is to skip transcripts not\
    \ labeled as with the 'GENCODE basic' tag). Default value: 'false'"
  id: all
  inputBinding:
    prefix: -all
  type: boolean
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
