#!/usr/bin/env cwl-runner

baseCommand:
- _frestml
class: CommandLineTool
cwlVersion: v1.0
id: _frestml
inputs:
- doc: properties Weights file
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: integer    [0] Number of times to randomise (Integer 0 or more)
  id: n_jumble
  inputBinding:
    prefix: -njumble
  type: boolean
- doc: integer    [6] Site length (Integer from 1 to 8)
  id: site_length
  inputBinding:
    prefix: -sitelength
  type: boolean
