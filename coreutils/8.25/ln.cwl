#!/usr/bin/env cwl-runner

baseCommand:
- ln
class: CommandLineTool
cwlVersion: v1.0
id: ln
inputs:
- doc: treat LINK_NAME as a normal file always
  id: no_target_directory
  inputBinding:
    prefix: --no-target-directory
  type: boolean
- doc: print name of each linked file
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
