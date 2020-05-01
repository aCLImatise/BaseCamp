#!/usr/bin/env cwl-runner

baseCommand:
- nw_match
class: CommandLineTool
cwlVersion: v1.0
id: nw_match
inputs:
- doc: ': prints tree which do NOT match the pattern.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
