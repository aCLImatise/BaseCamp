#!/usr/bin/env cwl-runner

baseCommand:
- probability
class: CommandLineTool
cwlVersion: v1.0
id: probability
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
- doc: The standard deviation of the mean length of the separation
  id: separation_std_dev
  inputBinding:
    prefix: --separation-std-dev
  type: long
- doc: Calculate mate-pair probability.
  id: use_mates
  inputBinding:
    prefix: --use-mates
  type: boolean
