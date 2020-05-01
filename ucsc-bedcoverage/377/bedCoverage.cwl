#!/usr/bin/env cwl-runner

baseCommand:
- bedCoverage
class: CommandLineTool
cwlVersion: v1.0
id: bedcoverage
inputs:
- doc: ''
  id: database
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bed_file
  inputBinding:
    position: 1
  type: string
- doc: Restrict to parts in restrict.bed
  id: restrict
  inputBinding:
    prefix: -restrict
  type: string
