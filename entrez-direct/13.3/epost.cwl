#!/usr/bin/env cwl-runner

baseCommand:
- epost
class: CommandLineTool
cwlVersion: v1.0
id: epost
inputs:
- doc: Database name
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: Unique identifier(s) or accession number(s)
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: uid or acc
  id: format
  inputBinding:
    prefix: -format
  type: boolean
- doc: Read from file instead of stdin
  id: input
  inputBinding:
    prefix: -input
  type: boolean
- doc: Alias for query step
  id: label
  inputBinding:
    prefix: -label
  type: boolean
