#!/usr/bin/env cwl-runner

baseCommand:
- sdsort
class: CommandLineTool
cwlVersion: v1.0
id: sdsort
inputs:
- doc: numeric sort (default is text sort)
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: descending sort (default is ascending sort)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: <DataField>   specifies sort field
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: fast mode. Sorts the records for each named compound independently (must be
    consecutive)
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: <NameField>  specifies compound name field (default = 1st title line)
  id: id
  inputBinding:
    prefix: -id
  type: boolean
