#!/usr/bin/env cwl-runner

baseCommand:
- expand
class: CommandLineTool
cwlVersion: v1.0
id: expand
inputs:
- doc: do not convert tabs after non blanks
  id: initial
  inputBinding:
    prefix: --initial
  type: boolean
- doc: have tabs NUMBER characters apart, not 8
  id: tabs
  inputBinding:
    prefix: --tabs
  type: string
- doc: use comma separated list of explicit tab positions
  id: tabs
  inputBinding:
    prefix: --tabs
  type: string
