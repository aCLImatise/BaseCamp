#!/usr/bin/env cwl-runner

baseCommand:
- svtools
class: CommandLineTool
cwlVersion: v1.0
id: svtools
inputs:
- doc: feature requests, bugs, mailing lists, etc.
  id: contact
  inputBinding:
    prefix: --contact
  type: boolean
