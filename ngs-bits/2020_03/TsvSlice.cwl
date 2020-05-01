#!/usr/bin/env cwl-runner

baseCommand:
- TsvSlice
class: CommandLineTool
cwlVersion: v1.0
id: tsvslice
inputs:
- doc: Comma-separated list of column names to extract.
  id: cols
  inputBinding:
    prefix: -cols
  type: string
- doc: "Input TSV file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "If set, column names are interpreted as 1-based column numbers. Default value:\
    \ 'false'"
  id: numeric
  inputBinding:
    prefix: -numeric
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
