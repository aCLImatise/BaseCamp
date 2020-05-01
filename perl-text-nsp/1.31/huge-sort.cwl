#!/usr/bin/env cwl-runner

baseCommand:
- huge-sort.pl
class: CommandLineTool
cwlVersion: v1.0
id: huge-sort.pl
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: source
  inputBinding:
    position: 1
  type: string
- doc: 'keep the unsorted file The default is to delete the unsorted file. '
  id: keep
  inputBinding:
    prefix: --keep
  type: boolean
