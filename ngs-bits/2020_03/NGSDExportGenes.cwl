#!/usr/bin/env cwl-runner

baseCommand:
- NGSDExportGenes
class: CommandLineTool
cwlVersion: v1.0
id: ngsdexportgenes
inputs:
- doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Annotate with HPO terms (slow). Default value: 'false'"
  id: hpo
  inputBinding:
    prefix: -hpo
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
