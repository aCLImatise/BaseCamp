#!/usr/bin/env cwl-runner

baseCommand:
- nw_distance
class: CommandLineTool
cwlVersion: v1.0
id: nw_distance
inputs:
- doc: ': in matrix mode, print a triangular matrix. In other modes, print values
    on a line, separated by TABs.'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
