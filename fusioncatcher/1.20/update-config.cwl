#!/usr/bin/env cwl-runner

baseCommand:
- update-config.py
class: CommandLineTool
cwlVersion: v1.0
id: update-config.py
inputs:
- doc: If specified than the updates/changes will be written to '/tmp/tmpg5gctayr/etc/configuration.cfg'.
  id: write_changes
  inputBinding:
    prefix: --write-changes
  type: boolean
