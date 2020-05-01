#!/usr/bin/env cwl-runner

baseCommand:
- getmesh
class: CommandLineTool
cwlVersion: v1.0
id: getmesh
inputs:
- doc: Output list [File Out]
  id: o
  inputBinding:
    prefix: -o
  type: boolean
