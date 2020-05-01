#!/usr/bin/env cwl-runner

baseCommand:
- NGSDImportQC
class: CommandLineTool
cwlVersion: v1.0
id: ngsdimportqc
inputs:
- doc: HPO ontology file from 'https://github.com/imgag/megSAP/raw/master/data/misc/qc-cv.obo'.
  id: obo
  inputBinding:
    prefix: -obo
  type: File
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: "Enable debug output. Default value: 'false'"
  id: debug
  inputBinding:
    prefix: -debug
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
