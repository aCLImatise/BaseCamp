#!/usr/bin/env cwl-runner

baseCommand:
- GenesToApproved
class: CommandLineTool
cwlVersion: v1.0
id: genestoapproved
inputs:
- doc: "Input TXT file with one gene symbol per line. If unset, reads from STDIN.\
    \ Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output TXT file with approved gene symbols. If unset, writes to STDOUT. Default\
    \ value: ''"
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
- doc: "Report all matching genes for ambiguous previous/synonymous symbols - instead\
    \ of an error. Default value: 'false'"
  id: report_ambiguous
  inputBinding:
    prefix: -report_ambiguous
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
