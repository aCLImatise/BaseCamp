#!/usr/bin/env cwl-runner

baseCommand:
- bedtools
class: CommandLineTool
cwlVersion: v1.0
id: bedtools
inputs:
- doc: Feature requests, bugs, mailing lists, etc.
  id: contact
  inputBinding:
    prefix: --contact
  type: boolean
