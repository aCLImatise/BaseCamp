#!/usr/bin/env cwl-runner

baseCommand:
- chakin
class: CommandLineTool
cwlVersion: v1.0
id: chakin
inputs:
- doc: Enables verbose mode.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Name of instance in /home/ubuntu/.chakin.yml. This parameter can also be set
    via the environment variable CHADO_INSTANCE  [default: __default; required]'
  id: instance
  inputBinding:
    prefix: --instance
  type: string
- doc: config file path
  id: path
  inputBinding:
    prefix: --path
  type: string
