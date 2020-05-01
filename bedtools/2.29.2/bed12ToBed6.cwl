#!/usr/bin/env cwl-runner

baseCommand:
- bed12ToBed6
class: CommandLineTool
cwlVersion: v1.0
id: bed12tobed6
inputs:
- doc: ''
  id: bed_tools
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bed12tobed6
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 2
  type: string
- doc: Force the score to be the (1-based) block number from the BED12.
  id: n
  inputBinding:
    prefix: -n
  type: boolean
