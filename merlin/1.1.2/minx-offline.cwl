#!/usr/bin/env cwl-runner

baseCommand:
- minx-offline
class: CommandLineTool
cwlVersion: v1.0
id: minx-offline
inputs:
- doc: '[merlin-infer.dat],'
  id: dat_infer
  inputBinding:
    prefix: --datinfer
  type: boolean
- doc: '[merlin-infer.ped]'
  id: ped_infer
  inputBinding:
    prefix: --pedinfer
  type: boolean
- doc: '[covars.tbl]'
  id: custom
  inputBinding:
    prefix: --custom
  type: boolean
