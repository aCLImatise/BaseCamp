#!/usr/bin/env cwl-runner

baseCommand:
- bedPileUps
class: CommandLineTool
cwlVersion: v1.0
id: bedpileups
inputs:
- doc: ''
  id: in_bed
  inputBinding:
    position: 0
  type: string
- doc: name field 4 when evaluating uniqueness
  id: include
  inputBinding:
    prefix: '- include'
  type: string
- doc: to parse fields
  id: use
  inputBinding:
    prefix: '- use'
  type: string
- doc: =2 - show the location and size of each pileUp
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
