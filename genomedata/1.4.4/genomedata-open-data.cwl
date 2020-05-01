#!/usr/bin/env cwl-runner

baseCommand:
- genomedata-open-data
class: CommandLineTool
cwlVersion: v1.0
id: genomedata-open-data
inputs:
- doc: ''
  id: gd_archive
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ''
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: ''
  id: track_names
  inputBinding:
    prefix: --tracknames
  type: string
