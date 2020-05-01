#!/usr/bin/env cwl-runner

baseCommand:
- linknets
class: CommandLineTool
cwlVersion: v1.0
id: linknets
inputs:
- doc: use copies of input units
  id: in_units
  inputBinding:
    prefix: -inunits
  type: boolean
- doc: fully connect with <n> input units
  id: in_connect
  inputBinding:
    prefix: -inconnect
  type: string
- doc: connect input with output one-to-one
  id: direct
  inputBinding:
    prefix: -direct
  type: boolean
- doc: fully connect to <n> output units
  id: out_connect
  inputBinding:
    prefix: -outconnect
  type: string
- doc: not be used together
  id: in_connect
  inputBinding:
    prefix: -inconnect
  type: string
