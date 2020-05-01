#!/usr/bin/env cwl-runner

baseCommand:
- arrow
class: CommandLineTool
cwlVersion: v1.0
id: arrow
inputs:
- doc: Enables verbose mode.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'name of apollo instance from /home/ubuntu /.apollo-arrow.yml  [default: __default;
    required]'
  id: apollo_instance
  inputBinding:
    prefix: --apollo_instance
  type: string
- doc: '[debug|info|warn|error|critical] Logging level  [default: warn]'
  id: log_level
  inputBinding:
    prefix: --log-level
  type: boolean
