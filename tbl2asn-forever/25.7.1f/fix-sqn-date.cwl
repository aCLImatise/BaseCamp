#!/usr/bin/env cwl-runner

baseCommand:
- fix-sqn-date
class: CommandLineTool
cwlVersion: v1.0
id: fix-sqn-date
inputs:
- doc: Input SQN file to change date
  id: sqn
  inputBinding:
    position: 0
  type: string
