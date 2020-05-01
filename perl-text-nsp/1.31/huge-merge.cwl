#!/usr/bin/env cwl-runner

baseCommand:
- huge-merge.pl
class: CommandLineTool
cwlVersion: v1.0
id: huge-merge.pl
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: source_dir
  inputBinding:
    position: 1
  type: string
- doc: Keep the unmerged files. The unmerged files are deleted by default.
  id: keep
  inputBinding:
    prefix: --keep
  type: boolean
