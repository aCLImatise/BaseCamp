#!/usr/bin/env cwl-runner

baseCommand:
- parsec
class: CommandLineTool
cwlVersion: v1.0
id: parsec
inputs:
- doc: Enables verbose mode.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Name of instance in /home/ubuntu/.parsec.yml. This parameter can also be set
    via the environment variable PARSEC_GALAXY_INSTANCE [default: __default; required]'
  id: galaxy_instance
  inputBinding:
    prefix: --galaxy_instance
  type: string
- doc: config file path
  id: path
  inputBinding:
    prefix: --path
  type: string
