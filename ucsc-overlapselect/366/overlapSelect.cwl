#!/usr/bin/env cwl-runner

baseCommand:
- overlapSelect
class: CommandLineTool
cwlVersion: v1.0
id: overlapselect
inputs:
- doc: that were dropped to this file.
  id: dropped
  inputBinding:
    prefix: -dropped
  type: File
- doc: '> 1 prints some details,'
  id: verbose
  inputBinding:
    prefix: '- verbose'
  type: string
