#!/usr/bin/env cwl-runner

baseCommand:
- colorinterpolate
class: CommandLineTool
cwlVersion: v1.0
id: colorinterpolate
inputs:
- doc: ',y1,z1 -end x2,y2,z2 -steps STEPS'
  id: start
  inputBinding:
    prefix: -start
  type: string
