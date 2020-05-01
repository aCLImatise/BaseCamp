#!/usr/bin/env cwl-runner

baseCommand:
- refgenie
class: CommandLineTool
cwlVersion: v1.0
id: refgenie
inputs:
- doc: Silence logging. Overrides verbosity.
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: Set logging level (1-5 or logging module level name)
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: Expand content of logging message format.
  id: log_dev
  inputBinding:
    prefix: --logdev
  type: boolean
