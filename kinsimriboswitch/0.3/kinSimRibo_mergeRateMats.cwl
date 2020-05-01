#!/usr/bin/env cwl-runner

baseCommand:
- kinSimRibo_mergeRateMats
class: CommandLineTool
cwlVersion: v1.0
id: kinsimribo_mergeratemats
inputs:
- doc: ''
  id: params
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: mon_rates
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: dim_rates
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: mon2dim_rates
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: dim2mon_rates
  inputBinding:
    position: 4
  type: string
- doc: ':     Allow disconnected matrix / do not check whether A and B are connected.'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ':     Be verbose'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
