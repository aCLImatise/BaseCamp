#!/usr/bin/env cwl-runner

baseCommand:
- TsvMerge
class: CommandLineTool
cwlVersion: v1.0
id: tsvmerge
inputs:
- doc: Input TSV files that are merged. If only one file is given, each line in this
    file is interpreted as an input file path.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Comma-separated list of column names used as key for merging.
  id: cols
  inputBinding:
    prefix: -cols
  type: string
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
- doc: "Fast and memory-efficient mode for merging files that are ordered in the same\
    \ way and have no missing lines. Default value: 'false'"
  id: simple
  inputBinding:
    prefix: -simple
  type: boolean
- doc: "Missing value, i.e. value that is inserted when key is missing in a file.\
    \ Default value: ''"
  id: mv
  inputBinding:
    prefix: -mv
  type: string
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
