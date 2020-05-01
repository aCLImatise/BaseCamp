#!/usr/bin/env cwl-runner

baseCommand:
- kat
class: CommandLineTool
cwlVersion: v1.0
id: kat
inputs:
- doc: '[ --verbose ]      Print extra information'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
