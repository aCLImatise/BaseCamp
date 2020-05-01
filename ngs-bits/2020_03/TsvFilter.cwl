#!/usr/bin/env cwl-runner

baseCommand:
- TsvFilter
class: CommandLineTool
cwlVersion: v1.0
id: tsvfilter
inputs:
- doc: Filter string with column name, operation and value,e.g. 'depth > 17'.
  id: filter
  inputBinding:
    prefix: -filter
  type: string
- doc: "Input TSV file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "If set, column name is interpreted as a 1-based column number. Default value:\
    \ 'false'"
  id: numeric
  inputBinding:
    prefix: -numeric
  type: boolean
- doc: "Invert filter. Default value: 'false'"
  id: v
  inputBinding:
    prefix: -v
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
