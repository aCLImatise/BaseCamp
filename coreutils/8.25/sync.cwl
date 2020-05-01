#!/usr/bin/env cwl-runner

baseCommand:
- sync
class: CommandLineTool
cwlVersion: v1.0
id: sync
inputs:
- doc: sync only file data, no unneeded metadata
  id: data
  inputBinding:
    prefix: --data
  type: boolean
- doc: sync the file systems that contain the files
  id: file_system
  inputBinding:
    prefix: --file-system
  type: boolean
