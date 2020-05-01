#!/usr/bin/env cwl-runner

baseCommand:
- flowcraft
class: CommandLineTool
cwlVersion: v1.0
id: flowcraft
inputs:
- doc: Set log to debug mode
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
