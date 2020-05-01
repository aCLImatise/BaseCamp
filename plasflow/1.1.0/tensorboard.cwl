#!/usr/bin/env cwl-runner

baseCommand:
- tensorboard
class: CommandLineTool
cwlVersion: v1.0
id: tensorboard
inputs:
- doc: How often the backend should load more data.
  id: reload_interval
  inputBinding:
    prefix: --reload_interval
  type: string
