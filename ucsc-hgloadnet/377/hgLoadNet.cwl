#!/usr/bin/env cwl-runner

baseCommand:
- hgLoadNet
class: CommandLineTool
cwlVersion: v1.0
id: hgloadnet
inputs:
- doc: suppress bin field
  id: no_bin
  inputBinding:
    prefix: -noBin
  type: boolean
- doc: to existing table
  id: old_table
  inputBinding:
    prefix: -oldTable
  type: string
- doc: Create table from .sql file
  id: sql_table
  inputBinding:
    prefix: -sqlTable
  type: string
- doc: prepend "xxx-" to query name
  id: q_prefix
  inputBinding:
    prefix: -qPrefix
  type: string
- doc: even with missing fields
  id: warn
  inputBinding:
    prefix: -warn
  type: string
- doc: loading table
  id: test
  inputBinding:
    prefix: -test
  type: string
