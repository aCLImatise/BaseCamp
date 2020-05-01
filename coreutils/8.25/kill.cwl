#!/usr/bin/env cwl-runner

baseCommand:
- kill
class: CommandLineTool
cwlVersion: v1.0
id: kill
inputs:
- doc: specify the name or number of the signal to be sent
  id: signal
  inputBinding:
    prefix: --signal
  type: string
- doc: signal names, or convert signal names to/from numbers
  id: list
  inputBinding:
    prefix: --list
  type: string
- doc: a table of signal information
  id: table
  inputBinding:
    prefix: --table
  type: string
