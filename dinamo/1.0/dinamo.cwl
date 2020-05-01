#!/usr/bin/env cwl-runner

baseCommand:
- dinamo
class: CommandLineTool
cwlVersion: v1.0
id: dinamo
inputs:
- doc: ': Prevents the log ouput from being displayed'
  id: no_log
  inputBinding:
    prefix: --no-log
  type: boolean
