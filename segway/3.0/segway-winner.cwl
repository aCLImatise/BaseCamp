#!/usr/bin/env cwl-runner

baseCommand:
- segway-winner
class: CommandLineTool
cwlVersion: v1.0
id: segway-winner
inputs:
- doc: print input master file name
  id: input_master
  inputBinding:
    prefix: --input-master
  type: boolean
- doc: print parameters file name
  id: params
  inputBinding:
    prefix: --params
  type: boolean
- doc: copy files to final winning file locations
  id: copy
  inputBinding:
    prefix: --copy
  type: boolean
- doc: overwrite existing files
  id: clobber
  inputBinding:
    prefix: --clobber
  type: boolean
