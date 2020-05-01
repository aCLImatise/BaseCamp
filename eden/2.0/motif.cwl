#!/usr/bin/env cwl-runner

baseCommand:
- motif
class: CommandLineTool
cwlVersion: v1.0
id: motif
inputs:
- doc: 'Increase output verbosity (default: None)'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: boolean
- doc: 'If set, do not log on file. (default: False)'
  id: no_logging
  inputBinding:
    prefix: --no-logging
  type: boolean
