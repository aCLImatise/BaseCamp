#!/usr/bin/env cwl-runner

baseCommand:
- pwd
class: CommandLineTool
cwlVersion: v1.0
id: pwd
inputs:
- doc: use PWD from environment, even if it contains symlinks
  id: logical
  inputBinding:
    prefix: --logical
  type: boolean
- doc: avoid all symlinks
  id: physical
  inputBinding:
    prefix: --physical
  type: boolean
